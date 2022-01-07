
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ lcd_addr_x ;
 scalar_t__ lcd_addr_y ;
 int lcd_gotoxy () ;
 int lcd_height ;
 int lcd_hwidth ;
 int pprt ;
 int pprt_lock ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int udelay (int) ;
 int w_dtr (int ,char) ;

__attribute__((used)) static void lcd_clear_fast_tilcd(void)
{
 int pos;
 lcd_addr_x = lcd_addr_y = 0;
 lcd_gotoxy();

 spin_lock(&pprt_lock);
 for (pos = 0; pos < lcd_height * lcd_hwidth; pos++) {

  w_dtr(pprt, ' ');
  udelay(60);
 }

 spin_unlock(&pprt_lock);

 lcd_addr_x = lcd_addr_y = 0;
 lcd_gotoxy();
}
