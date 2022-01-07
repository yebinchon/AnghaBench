
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct l3_pins {int clock_high; int (* setclk ) (int) ;int data_setup; int (* setdat ) (unsigned int) ;int data_hold; } ;


 int stub1 (int) ;
 int stub2 (unsigned int) ;
 int stub3 (int) ;
 int udelay (int ) ;

__attribute__((used)) static void sendbyte(struct l3_pins *adap, unsigned int byte)
{
 int i;

 for (i = 0; i < 8; i++) {
  adap->setclk(0);
  udelay(adap->data_hold);
  adap->setdat(byte & 1);
  udelay(adap->data_setup);
  adap->setclk(1);
  udelay(adap->clock_high);
  byte >>= 1;
 }
}
