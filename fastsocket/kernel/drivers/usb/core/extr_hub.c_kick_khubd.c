
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_hub {int event_list; int disconnected; int intfdev; } ;
struct TYPE_2__ {int pm_usage_cnt; } ;


 int atomic_set (int *,int) ;
 int hub_event_list ;
 int hub_event_lock ;
 int khubd_wait ;
 int list_add_tail (int *,int *) ;
 scalar_t__ list_empty (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 TYPE_1__* to_usb_interface (int ) ;
 int wake_up (int *) ;

__attribute__((used)) static void kick_khubd(struct usb_hub *hub)
{
 unsigned long flags;


 atomic_set(&to_usb_interface(hub->intfdev)->pm_usage_cnt, 1);

 spin_lock_irqsave(&hub_event_lock, flags);
 if (!hub->disconnected && list_empty(&hub->event_list)) {
  list_add_tail(&hub->event_list, &hub_event_list);
  wake_up(&khubd_wait);
 }
 spin_unlock_irqrestore(&hub_event_lock, flags);
}
