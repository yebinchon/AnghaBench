
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct udc_ep {scalar_t__ halted; } ;
struct TYPE_5__ {struct udc_ep* ep; } ;
struct TYPE_4__ {scalar_t__ expires; } ;


 int HZ ;
 size_t UDC_EPIN_IX ;
 size_t UDC_EPOUT_IX ;
 int UDC_POLLSTALL_TIMER_USECONDS ;
 int add_timer (TYPE_1__*) ;
 int complete (int *) ;
 scalar_t__ jiffies ;
 int on_pollstall_exit ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 scalar_t__ stop_pollstall_timer ;
 TYPE_2__* udc ;
 int udc_handle_halt_state (struct udc_ep*) ;
 TYPE_1__ udc_pollstall_timer ;
 int udc_stall_spinlock ;

__attribute__((used)) static void udc_pollstall_timer_function(unsigned long v)
{
 struct udc_ep *ep;
 int halted = 0;

 spin_lock_irq(&udc_stall_spinlock);




 ep = &udc->ep[UDC_EPIN_IX];
 udc_handle_halt_state(ep);
 if (ep->halted)
  halted = 1;

 ep = &udc->ep[UDC_EPOUT_IX];
 udc_handle_halt_state(ep);
 if (ep->halted)
  halted = 1;


 if (!stop_pollstall_timer && halted) {
  udc_pollstall_timer.expires = jiffies +
     HZ * UDC_POLLSTALL_TIMER_USECONDS
     / (1000 * 1000);
  add_timer(&udc_pollstall_timer);
 }
 spin_unlock_irq(&udc_stall_spinlock);

 if (stop_pollstall_timer)
  complete(&on_pollstall_exit);
}
