
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct udc {scalar_t__ data_ep_queued; int data_ep_enabled; } ;
struct TYPE_4__ {scalar_t__ expires; } ;


 int HZ ;
 int UDC_RDE_TIMER_DIV ;
 int add_timer (TYPE_1__*) ;
 scalar_t__ jiffies ;
 int set_rde ;
 int stop_timer ;
 int timer_pending (TYPE_1__*) ;
 int udc_set_rde (struct udc*) ;
 TYPE_1__ udc_timer ;
 scalar_t__ use_dma ;

__attribute__((used)) static void udc_ep0_set_rde(struct udc *dev)
{
 if (use_dma) {




  if (!dev->data_ep_enabled || dev->data_ep_queued) {
   udc_set_rde(dev);
  } else {




   if (set_rde != 0 && !timer_pending(&udc_timer)) {
    udc_timer.expires =
     jiffies + HZ/UDC_RDE_TIMER_DIV;
    set_rde = 1;
    if (!stop_timer) {
     add_timer(&udc_timer);
    }
   }
  }
 }
}
