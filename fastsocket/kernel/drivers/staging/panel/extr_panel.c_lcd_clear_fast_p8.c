
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void* e; void* rw; void* rs; } ;


 void* BIT_CLR ;
 void* BIT_SET ;
 TYPE_1__ bits ;
 scalar_t__ lcd_addr_x ;
 scalar_t__ lcd_addr_y ;
 int lcd_gotoxy () ;
 int lcd_height ;
 int lcd_hwidth ;
 int pprt ;
 int pprt_lock ;
 int set_ctrl_bits () ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int udelay (int) ;
 int w_dtr (int ,char) ;

__attribute__((used)) static void lcd_clear_fast_p8(void)
{
 int pos;
 lcd_addr_x = lcd_addr_y = 0;
 lcd_gotoxy();

 spin_lock(&pprt_lock);
 for (pos = 0; pos < lcd_height * lcd_hwidth; pos++) {

  w_dtr(pprt, ' ');
  udelay(20);

  bits.e = BIT_SET;
  bits.rs = BIT_SET;
  bits.rw = BIT_CLR;
  set_ctrl_bits();

  udelay(40);

  bits.e = BIT_CLR;
  set_ctrl_bits();

  udelay(45);
 }
 spin_unlock(&pprt_lock);

 lcd_addr_x = lcd_addr_y = 0;
 lcd_gotoxy();
}
