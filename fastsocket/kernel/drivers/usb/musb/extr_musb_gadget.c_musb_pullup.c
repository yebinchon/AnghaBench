
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct musb {int mregs; TYPE_1__* gadget_driver; } ;
struct TYPE_2__ {int function; } ;


 int DBG (int,char*,int ,char*) ;
 int MUSB_POWER ;
 int MUSB_POWER_SOFTCONN ;
 int musb_readb (int ,int ) ;
 int musb_writeb (int ,int ,int ) ;

__attribute__((used)) static void musb_pullup(struct musb *musb, int is_on)
{
 u8 power;

 power = musb_readb(musb->mregs, MUSB_POWER);
 if (is_on)
  power |= MUSB_POWER_SOFTCONN;
 else
  power &= ~MUSB_POWER_SOFTCONN;



 DBG(3, "gadget %s D+ pullup %s\n",
  musb->gadget_driver->function, is_on ? "on" : "off");
 musb_writeb(musb->mregs, MUSB_POWER, power);
}
