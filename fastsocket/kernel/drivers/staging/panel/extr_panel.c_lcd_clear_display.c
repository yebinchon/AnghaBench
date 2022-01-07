
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ lcd_addr_x ;
 scalar_t__ lcd_addr_y ;
 int lcd_write_cmd (int) ;
 int long_sleep (int) ;

__attribute__((used)) static void lcd_clear_display(void)
{
 lcd_write_cmd(0x01);
 lcd_addr_x = lcd_addr_y = 0;

 long_sleep(15);
}
