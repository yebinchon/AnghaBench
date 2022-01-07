
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct musb {int lock; int mregs; TYPE_2__* config; TYPE_1__* xceiv; } ;
struct TYPE_4__ {int gpio_vrsel; } ;
struct TYPE_3__ {int state; } ;


 int DBG (int,char*,int ) ;
 int MUSB_DEVCTL ;
 int MUSB_DEVCTL_BDEVICE ;
 int MUSB_DEVCTL_SESSION ;
 int MUSB_INTRUSB ;
 int MUSB_INTRUSBE ;
 int MUSB_INTR_SUSPEND ;
 int MUSB_INTR_VBUSERROR ;
 int MUSB_POWER ;
 int MUSB_POWER_HSENAB ;


 scalar_t__ TIMER_DELAY ;
 int gpio_set_value (int ,int) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 int musb_conn_timer ;
 int musb_readb (int ,int ) ;
 int musb_readw (int ,int ) ;
 int musb_writeb (int ,int ,int) ;
 int musb_writew (int ,int ,int) ;
 int otg_state_string (struct musb*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void musb_conn_timer_handler(unsigned long _musb)
{
 struct musb *musb = (void *)_musb;
 unsigned long flags;
 u16 val;

 spin_lock_irqsave(&musb->lock, flags);
 switch (musb->xceiv->state) {
 case 129:
 case 128:

  val = musb_readw(musb->mregs, MUSB_DEVCTL);
  val |= MUSB_DEVCTL_SESSION;
  musb_writew(musb->mregs, MUSB_DEVCTL, val);

  val = musb_readw(musb->mregs, MUSB_DEVCTL);
  if (!(val & MUSB_DEVCTL_BDEVICE)) {
   gpio_set_value(musb->config->gpio_vrsel, 1);
   musb->xceiv->state = 128;
  } else {
   gpio_set_value(musb->config->gpio_vrsel, 0);


   val = musb_readb(musb->mregs, MUSB_INTRUSBE);
   val &= ~MUSB_INTR_VBUSERROR;
   musb_writeb(musb->mregs, MUSB_INTRUSBE, val);

   val = MUSB_INTR_SUSPEND | MUSB_INTR_VBUSERROR;
   musb_writeb(musb->mregs, MUSB_INTRUSB, val);

   val = MUSB_POWER_HSENAB;
   musb_writeb(musb->mregs, MUSB_POWER, val);
  }
  mod_timer(&musb_conn_timer, jiffies + TIMER_DELAY);
  break;

 default:
  DBG(1, "%s state not handled\n", otg_state_string(musb));
  break;
 }
 spin_unlock_irqrestore(&musb->lock, flags);

 DBG(4, "state is %s\n", otg_state_string(musb));
}
