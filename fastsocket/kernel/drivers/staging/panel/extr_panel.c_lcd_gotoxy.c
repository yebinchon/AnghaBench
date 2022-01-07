
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int lcd_addr_x ;
 scalar_t__ lcd_addr_y ;
 int lcd_bwidth ;
 int lcd_hwidth ;
 int lcd_write_cmd (int) ;

__attribute__((used)) static void lcd_gotoxy(void)
{
 lcd_write_cmd(0x80
        | (lcd_addr_y ? lcd_hwidth : 0)

        | ((lcd_addr_x < lcd_bwidth) ? lcd_addr_x &
    (lcd_hwidth - 1) : lcd_bwidth - 1));
}
