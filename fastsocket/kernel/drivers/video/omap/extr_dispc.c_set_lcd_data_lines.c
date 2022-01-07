
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int BUG () ;
 int DISPC_CONTROL ;
 int dispc_read_reg (int ) ;
 int dispc_write_reg (int ,int) ;

__attribute__((used)) static void set_lcd_data_lines(int data_lines)
{
 u32 l;
 int code = 0;

 switch (data_lines) {
 case 12:
  code = 0;
  break;
 case 16:
  code = 1;
  break;
 case 18:
  code = 2;
  break;
 case 24:
  code = 3;
  break;
 default:
  BUG();
 }

 l = dispc_read_reg(DISPC_CONTROL);
 l &= ~(0x03 << 8);
 l |= code << 8;
 dispc_write_reg(DISPC_CONTROL, l);
}
