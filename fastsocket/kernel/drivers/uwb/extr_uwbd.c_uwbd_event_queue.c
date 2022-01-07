
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ pid; int event_list_lock; int wq; int event_list; } ;
struct uwb_rc {TYPE_2__ uwbd; } ;
struct TYPE_3__ {struct uwb_event* rceb; } ;
struct uwb_event {scalar_t__ type; TYPE_1__ notif; struct uwb_rc* rc; int list_node; } ;


 scalar_t__ UWB_EVT_TYPE_NOTIF ;
 int __uwb_rc_put (struct uwb_rc*) ;
 int kfree (struct uwb_event*) ;
 int list_add (int *,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wake_up_all (int *) ;

void uwbd_event_queue(struct uwb_event *evt)
{
 struct uwb_rc *rc = evt->rc;
 unsigned long flags;

 spin_lock_irqsave(&rc->uwbd.event_list_lock, flags);
 if (rc->uwbd.pid != 0) {
  list_add(&evt->list_node, &rc->uwbd.event_list);
  wake_up_all(&rc->uwbd.wq);
 } else {
  __uwb_rc_put(evt->rc);
  if (evt->type == UWB_EVT_TYPE_NOTIF)
   kfree(evt->notif.rceb);
  kfree(evt);
 }
 spin_unlock_irqrestore(&rc->uwbd.event_list_lock, flags);
 return;
}
