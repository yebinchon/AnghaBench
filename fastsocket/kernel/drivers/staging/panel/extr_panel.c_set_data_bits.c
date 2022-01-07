
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t e; size_t rs; size_t rw; size_t bl; size_t cl; size_t da; } ;


 size_t BIT_MSK ;
 int LCD_BITS ;
 size_t LCD_BIT_BL ;
 size_t LCD_BIT_CL ;
 size_t LCD_BIT_DA ;
 size_t LCD_BIT_E ;
 size_t LCD_BIT_RS ;
 size_t LCD_BIT_RW ;
 size_t LCD_PORT_D ;
 TYPE_1__ bits ;
 int*** lcd_bits ;
 int pprt ;
 int r_dtr (int ) ;
 int w_dtr (int ,int) ;

__attribute__((used)) static int set_data_bits(void)
{
 int val, bit;

 val = r_dtr(pprt);
 for (bit = 0; bit < LCD_BITS; bit++)
  val &= lcd_bits[LCD_PORT_D][bit][BIT_MSK];

 val |= lcd_bits[LCD_PORT_D][LCD_BIT_E][bits.e]
     | lcd_bits[LCD_PORT_D][LCD_BIT_RS][bits.rs]
     | lcd_bits[LCD_PORT_D][LCD_BIT_RW][bits.rw]
     | lcd_bits[LCD_PORT_D][LCD_BIT_BL][bits.bl]
     | lcd_bits[LCD_PORT_D][LCD_BIT_CL][bits.cl]
     | lcd_bits[LCD_PORT_D][LCD_BIT_DA][bits.da];

 w_dtr(pprt, val);
 return val;
}
