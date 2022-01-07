
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct l3_pins {int mode_setup; int (* setmode ) (int) ;int mode; int mode_hold; } ;


 int sendbyte (struct l3_pins*,int const) ;
 int stub1 (int) ;
 int stub2 (int) ;
 int udelay (int ) ;

__attribute__((used)) static void sendbytes(struct l3_pins *adap, const u8 *buf,
        int len)
{
 int i;

 for (i = 0; i < len; i++) {
  if (i) {
   udelay(adap->mode_hold);
   adap->setmode(0);
   udelay(adap->mode);
  }
  adap->setmode(1);
  udelay(adap->mode_setup);
  sendbyte(adap, buf[i]);
 }
}
