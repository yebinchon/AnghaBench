
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct musb {int port1_status; int is_active; int lock; TYPE_1__* xceiv; int mregs; } ;
struct TYPE_2__ {int state; } ;


 int DBG (int,char*,int) ;
 int MUSB_DEVCTL ;
 int MUSB_DEVCTL_BDEVICE ;
 int MUSB_DEVCTL_SESSION ;
 int MUSB_DEV_MODE (struct musb*) ;
 int MUSB_HST_MODE (struct musb*) ;
 int MUSB_PORT_STAT_RESUME ;
 int MUSB_POWER ;
 int MUSB_POWER_RESUME ;

 int OTG_STATE_A_IDLE ;


 void* OTG_STATE_B_IDLE ;
 int USB_PORT_STAT_C_SUSPEND ;
 int USB_PORT_STAT_SUSPEND ;
 int musb_readb (int ,int ) ;
 int musb_to_hcd (struct musb*) ;
 int musb_writeb (int ,int ,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int usb_hcd_poll_rh_status (int ) ;

__attribute__((used)) static void musb_do_idle(unsigned long _musb)
{
 struct musb *musb = (void *)_musb;
 unsigned long flags;



 u8 devctl;

 spin_lock_irqsave(&musb->lock, flags);

 devctl = musb_readb(musb->mregs, MUSB_DEVCTL);

 switch (musb->xceiv->state) {
 case 128:
  devctl &= ~MUSB_DEVCTL_SESSION;
  musb_writeb(musb->mregs, MUSB_DEVCTL, devctl);

  devctl = musb_readb(musb->mregs, MUSB_DEVCTL);
  if (devctl & MUSB_DEVCTL_BDEVICE) {
   musb->xceiv->state = OTG_STATE_B_IDLE;
   MUSB_DEV_MODE(musb);
  } else {
   musb->xceiv->state = OTG_STATE_A_IDLE;
   MUSB_HST_MODE(musb);
  }
  break;
 default:
  break;
 }
 spin_unlock_irqrestore(&musb->lock, flags);
}
