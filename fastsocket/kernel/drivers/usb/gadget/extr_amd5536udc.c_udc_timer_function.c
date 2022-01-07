
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_7__ {TYPE_1__* regs; } ;
struct TYPE_6__ {void* expires; } ;
struct TYPE_5__ {int sts; int ctl; } ;


 int AMD_BIT (int ) ;
 int HZ ;
 int UDC_DEVCTL_RDE ;
 int UDC_DEVSTS_RXFIFO_EMPTY ;
 int UDC_RDE_TIMER_DIV ;
 int UDC_RDE_TIMER_SECONDS ;
 int add_timer (TYPE_2__*) ;
 int complete (int *) ;
 void* jiffies ;
 int on_exit ;
 int readl (int *) ;
 int set_rde ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 scalar_t__ stop_timer ;
 TYPE_3__* udc ;
 int udc_irq_spinlock ;
 TYPE_2__ udc_timer ;
 int writel (int,int *) ;

__attribute__((used)) static void udc_timer_function(unsigned long v)
{
 u32 tmp;

 spin_lock_irq(&udc_irq_spinlock);

 if (set_rde > 0) {




  if (set_rde > 1) {

   tmp = readl(&udc->regs->ctl);
   tmp |= AMD_BIT(UDC_DEVCTL_RDE);
   writel(tmp, &udc->regs->ctl);
   set_rde = -1;
  } else if (readl(&udc->regs->sts)
    & AMD_BIT(UDC_DEVSTS_RXFIFO_EMPTY)) {




   udc_timer.expires = jiffies + HZ/UDC_RDE_TIMER_DIV;
   if (!stop_timer) {
    add_timer(&udc_timer);
   }
  } else {







   set_rde++;

   udc_timer.expires = jiffies + HZ*UDC_RDE_TIMER_SECONDS;
   if (!stop_timer) {
    add_timer(&udc_timer);
   }
  }

 } else
  set_rde = -1;
 spin_unlock_irq(&udc_irq_spinlock);
 if (stop_timer)
  complete(&on_exit);

}
