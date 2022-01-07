
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LCD_FLAG_B ;
 int LCD_FLAG_C ;
 int LCD_FLAG_D ;
 int LCD_FLAG_F ;
 int LCD_FLAG_L ;
 int LCD_FLAG_N ;
 int lcd_backlight (int) ;
 int lcd_clear_display () ;
 int lcd_flags ;
 int lcd_height ;
 int lcd_write_cmd (int) ;
 int long_sleep (int) ;

__attribute__((used)) static void lcd_init_display(void)
{

 lcd_flags = ((lcd_height > 1) ? LCD_FLAG_N : 0)
     | LCD_FLAG_D | LCD_FLAG_C | LCD_FLAG_B;

 long_sleep(20);

 lcd_write_cmd(0x30);
 long_sleep(10);
 lcd_write_cmd(0x30);
 long_sleep(10);
 lcd_write_cmd(0x30);
 long_sleep(10);

 lcd_write_cmd(0x30
        | ((lcd_flags & LCD_FLAG_F) ? 4 : 0)
        | ((lcd_flags & LCD_FLAG_N) ? 8 : 0)
     );
 long_sleep(10);

 lcd_write_cmd(0x08);
 long_sleep(10);

 lcd_write_cmd(0x08
        | ((lcd_flags & LCD_FLAG_D) ? 4 : 0)
        | ((lcd_flags & LCD_FLAG_C) ? 2 : 0)
        | ((lcd_flags & LCD_FLAG_B) ? 1 : 0)
     );

 lcd_backlight((lcd_flags & LCD_FLAG_L) ? 1 : 0);

 long_sleep(10);

 lcd_write_cmd(0x06);

 lcd_clear_display();
}
