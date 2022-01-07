
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ expires; } ;


 int OPEN_READ ;
 int add_timer (TYPE_1__*) ;
 scalar_t__ input_avail () ;
 scalar_t__ jiffies ;
 int lock ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int uart6850_input_loop () ;
 int uart6850_opened ;
 TYPE_1__ uart6850_timer ;

__attribute__((used)) static void poll_uart6850(unsigned long dummy)
{
 unsigned long flags;

 if (!(uart6850_opened & OPEN_READ))
  return;

 spin_lock_irqsave(&lock,flags);
 if (input_avail())
  uart6850_input_loop();

 uart6850_timer.expires = 1 + jiffies;
 add_timer(&uart6850_timer);





 spin_unlock_irqrestore(&lock,flags);
}
