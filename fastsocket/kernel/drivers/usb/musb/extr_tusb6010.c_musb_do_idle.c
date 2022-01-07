
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct musb {int port1_status; int lock; int gadget_driver; int is_active; int idle_timeout; int a_wait_bcon; TYPE_1__* xceiv; } ;
struct TYPE_2__ {int state; } ;


 int DBG (int,char*,int ) ;


 int TUSB_PRCM_WBUS ;
 int TUSB_PRCM_WHOSTDISCON ;
 int TUSB_PRCM_WID ;
 int TUSB_PRCM_WVBUS ;
 scalar_t__ is_host_active (struct musb*) ;
 scalar_t__ is_otg_enabled (struct musb*) ;
 scalar_t__ is_peripheral_enabled (struct musb*) ;
 int jiffies ;
 int otg_state_string (struct musb*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int time_after (int ,int ) ;
 int tusb_allow_idle (struct musb*,int) ;
 int tusb_source_power (struct musb*,int ) ;

__attribute__((used)) static void musb_do_idle(unsigned long _musb)
{
 struct musb *musb = (void *)_musb;
 unsigned long flags;

 spin_lock_irqsave(&musb->lock, flags);

 switch (musb->xceiv->state) {
 case 128:
  if ((musb->a_wait_bcon != 0)
   && (musb->idle_timeout == 0
    || time_after(jiffies, musb->idle_timeout))) {
   DBG(4, "Nothing connected %s, turning off VBUS\n",
     otg_state_string(musb));
  }

 case 129:
  tusb_source_power(musb, 0);
 default:
  break;
 }

 if (!musb->is_active) {
  u32 wakeups;


  if (is_host_active(musb) && (musb->port1_status >> 16))
   goto done;
  wakeups = TUSB_PRCM_WHOSTDISCON | TUSB_PRCM_WBUS;

  tusb_allow_idle(musb, wakeups);
 }
done:
 spin_unlock_irqrestore(&musb->lock, flags);
}
