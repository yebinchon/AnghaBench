
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int da; int cl; } ;


 int BIT_CLR ;
 int BIT_SET ;
 TYPE_1__ bits ;
 int panel_set_bits () ;
 int udelay (int) ;

__attribute__((used)) static void lcd_send_serial(int byte)
{
 int bit;




 for (bit = 0; bit < 8; bit++) {
  bits.cl = BIT_CLR;
  panel_set_bits();
  bits.da = byte & 1;
  panel_set_bits();
  udelay(2);
  bits.cl = BIT_SET;
  panel_set_bits();
  udelay(1);
  byte >>= 1;
 }
}
