
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct musb {int is_active; int lock; int g; TYPE_2__* gadget_driver; TYPE_1__* xceiv; scalar_t__ is_suspended; } ;
struct TYPE_4__ {int (* resume ) (int *) ;} ;
struct TYPE_3__ {int state; } ;





 int WARNING (char*,int ) ;
 int otg_state_string (struct musb*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stub1 (int *) ;

void musb_g_resume(struct musb *musb)
{
 musb->is_suspended = 0;
 switch (musb->xceiv->state) {
 case 130:
  break;
 case 128:
 case 129:
  musb->is_active = 1;
  if (musb->gadget_driver && musb->gadget_driver->resume) {
   spin_unlock(&musb->lock);
   musb->gadget_driver->resume(&musb->g);
   spin_lock(&musb->lock);
  }
  break;
 default:
  WARNING("unhandled RESUME transition (%s)\n",
    otg_state_string(musb));
 }
}
