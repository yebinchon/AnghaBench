
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct musb {int is_active; int mregs; TYPE_1__* xceiv; } ;
struct TYPE_2__ {int default_a; int state; } ;


 int DBG (int,char*,int ,int ) ;
 int MUSB_DEVCTL ;
 int MUSB_DEVCTL_SESSION ;
 int MUSB_DEV_MODE (struct musb*) ;
 int MUSB_HST_MODE (struct musb*) ;
 int OTG_STATE_A_WAIT_VRISE ;
 int OTG_STATE_B_IDLE ;
 int musb_readb (int ,int ) ;
 int musb_writeb (int ,int ,int ) ;
 int otg_state_string (struct musb*) ;

__attribute__((used)) static void omap_set_vbus(struct musb *musb, int is_on)
{
 u8 devctl;





 devctl = musb_readb(musb->mregs, MUSB_DEVCTL);

 if (is_on) {
  musb->is_active = 1;
  musb->xceiv->default_a = 1;
  musb->xceiv->state = OTG_STATE_A_WAIT_VRISE;
  devctl |= MUSB_DEVCTL_SESSION;

  MUSB_HST_MODE(musb);
 } else {
  musb->is_active = 0;





  musb->xceiv->default_a = 0;
  musb->xceiv->state = OTG_STATE_B_IDLE;
  devctl &= ~MUSB_DEVCTL_SESSION;

  MUSB_DEV_MODE(musb);
 }
 musb_writeb(musb->mregs, MUSB_DEVCTL, devctl);

 DBG(1, "VBUS %s, devctl %02x "
                                    "\n",
  otg_state_string(musb),
  musb_readb(musb->mregs, MUSB_DEVCTL));
}
