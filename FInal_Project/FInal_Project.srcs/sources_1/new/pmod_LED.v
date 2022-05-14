`timescale 1ns / 1ps

module pmod_LED(
        input clk,
        input [7:0] switch1,
        output reg [7:0] p_led,
        output reg [6:0] segements,
        output reg digsel
    );
    
    
    always @(posedge clk)
        case(switch1 [3:0])
         0: segements <= 7'b0111111;
         1: segements <= 7'b0000110;
         2: segements <= 7'b1011011;
         3: segements <= 7'b1001111;
         4: segements <= 7'b1100110;
         5: segements <= 7'b1101101;
         6: segements <= 7'b1111101;
         7: segements <= 7'b0000111;
         8: segements <= 7'b1111111;
         9: segements <= 7'b1100111;
         10: segements <= 7'b1110111;
         11: segements <= 7'b1111111;
         12: segements <= 7'b0111001;
         13: segements <= 7'b0111111;
         14: segements <= 7'b1111001;
         15: segements <= 7'b1110001;       
         endcase
         
         
         always @(posedge clk) p_led <= switch1;
         always @(*) digsel = 0;
         
endmodule
