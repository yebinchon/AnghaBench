
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ lcd_addr_x ;
 scalar_t__ lcd_addr_y ;
 int lcd_gotoxy () ;
 int lcd_height ;
 int lcd_hwidth ;
 int lcd_send_serial (char) ;
 int pprt_lock ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int udelay (int) ;

__attribute__((used)) static void lcd_clear_fast_s(void)
{
 int pos;
 lcd_addr_x = lcd_addr_y = 0;
 lcd_gotoxy();

 spin_lock(&pprt_lock);
 for (pos = 0; pos < lcd_height * lcd_hwidth; pos++) {
  lcd_send_serial(0x5F);
  lcd_send_serial(' ' & 0x0F);
  lcd_send_serial((' ' >> 4) & 0x0F);
  udelay(40);
 }
 spin_unlock(&pprt_lock);

 lcd_addr_x = lcd_addr_y = 0;
 lcd_gotoxy();
}
