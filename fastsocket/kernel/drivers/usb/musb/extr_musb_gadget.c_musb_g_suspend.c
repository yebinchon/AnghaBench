
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct musb {int is_suspended; int lock; int g; TYPE_2__* gadget_driver; TYPE_1__* xceiv; int mregs; } ;
struct TYPE_4__ {int (* suspend ) (int *) ;} ;
struct TYPE_3__ {int state; } ;


 int DBG (int,char*,int) ;
 int MUSB_DEVCTL ;
 int MUSB_DEVCTL_VBUS ;


 int WARNING (char*,int ) ;
 int musb_readb (int ,int ) ;
 int otg_state_string (struct musb*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stub1 (int *) ;

void musb_g_suspend(struct musb *musb)
{
 u8 devctl;

 devctl = musb_readb(musb->mregs, MUSB_DEVCTL);
 DBG(3, "devctl %02x\n", devctl);

 switch (musb->xceiv->state) {
 case 129:
  if ((devctl & MUSB_DEVCTL_VBUS) == MUSB_DEVCTL_VBUS)
   musb->xceiv->state = 128;
  break;
 case 128:
  musb->is_suspended = 1;
  if (musb->gadget_driver && musb->gadget_driver->suspend) {
   spin_unlock(&musb->lock);
   musb->gadget_driver->suspend(&musb->g);
   spin_lock(&musb->lock);
  }
  break;
 default:



  WARNING("unhandled SUSPEND transition (%s)\n",
    otg_state_string(musb));
 }
}
