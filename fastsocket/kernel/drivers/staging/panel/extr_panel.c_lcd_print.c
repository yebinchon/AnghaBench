
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ lcd_addr_x ;
 scalar_t__ lcd_bwidth ;
 char* lcd_char_conv ;
 int lcd_gotoxy () ;
 int lcd_write_data (char) ;

__attribute__((used)) static void lcd_print(char c)
{
 if (lcd_addr_x < lcd_bwidth) {
  if (lcd_char_conv != ((void*)0))
   c = lcd_char_conv[(unsigned char)c];
  lcd_write_data(c);
  lcd_addr_x++;
 }

 if (lcd_addr_x == lcd_bwidth)
  lcd_gotoxy();
}
