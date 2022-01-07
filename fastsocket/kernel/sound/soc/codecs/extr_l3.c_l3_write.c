
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct l3_pins {int (* setmode ) (int) ;int (* setdat ) (int) ;int (* setclk ) (int) ;int mode_hold; int mode_setup; int mode; } ;


 int sendbyte (struct l3_pins*,int ) ;
 int sendbytes (struct l3_pins*,int *,int) ;
 int stub1 (int) ;
 int stub2 (int) ;
 int stub3 (int) ;
 int stub4 (int) ;
 int stub5 (int) ;
 int stub6 (int) ;
 int stub7 (int) ;
 int udelay (int ) ;

int l3_write(struct l3_pins *adap, u8 addr, u8 *data, int len)
{
 adap->setclk(1);
 adap->setdat(1);
 adap->setmode(1);
 udelay(adap->mode);

 adap->setmode(0);
 udelay(adap->mode_setup);
 sendbyte(adap, addr);
 udelay(adap->mode_hold);

 sendbytes(adap, data, len);

 adap->setclk(1);
 adap->setdat(1);
 adap->setmode(0);

 return len;
}
