module led_blink(
    input clk,
    output reg led
    );

reg [31:0]count;

always @(posedge clk) begin

if(count == 99999999) begin //Time is up
    count <= 0;             //Reset count register
    led <= ~led;            //Toggle led (in each second)
end else begin
    count <= count + 1;     //Counts 100MHz clock
    end

end

endmodule

#referencias 
#https://circuitfever-com.translate.goog/led-blinking-in-fpga-verilog?_x_tr_sl=en&_x_tr_tl=es&_x_tr_hl=es&_x_tr_pto=tc



#####
#Caso de la color #
#25Mhz
module led_blink(
    input clk,
    output reg led
    );

reg [31:0]count;

always @(posedge clk) begin

if(count == 24999999) begin //Tiempo acabado
    count <= 0;             //Reset
    led <= ~led;            //Led segundo
end else begin
    count <= count + 1;     //Counts 25MHz clock
    end

end

endmodule