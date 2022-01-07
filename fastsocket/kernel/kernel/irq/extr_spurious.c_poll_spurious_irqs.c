
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ POLL_SPURIOUS_IRQ_INTERVAL ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 int poll_all_shared_irqs () ;
 int poll_spurious_irq_timer ;

__attribute__((used)) static void poll_spurious_irqs(unsigned long dummy)
{
 poll_all_shared_irqs();

 mod_timer(&poll_spurious_irq_timer,
    jiffies + POLL_SPURIOUS_IRQ_INTERVAL);
}
