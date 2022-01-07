
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irqaction {int flags; int (* handler ) (unsigned int,int ) ;struct irqaction* next; int thread; int thread_flags; int thread_fn; int dev_id; } ;
typedef int irqreturn_t ;


 int IRQF_DISABLED ;
 unsigned int IRQF_SAMPLE_RANDOM ;
 int IRQTF_DIED ;
 int IRQTF_RUNTHREAD ;

 int IRQ_NONE ;

 int add_interrupt_randomness (unsigned int) ;
 int likely (int) ;
 int local_irq_disable () ;
 int local_irq_enable_in_hardirq () ;
 int set_bit (int ,int *) ;
 int stub1 (unsigned int,int ) ;
 int test_bit (int ,int *) ;
 int trace_irq_handler_entry (unsigned int,struct irqaction*) ;
 int trace_irq_handler_exit (unsigned int,struct irqaction*,int) ;
 int unlikely (int) ;
 int wake_up_process (int ) ;
 int warn_no_thread (unsigned int,struct irqaction*) ;

irqreturn_t handle_IRQ_event(unsigned int irq, struct irqaction *action)
{
 irqreturn_t ret, retval = IRQ_NONE;
 unsigned int status = 0;

 if (!(action->flags & IRQF_DISABLED))
  local_irq_enable_in_hardirq();

 do {
  trace_irq_handler_entry(irq, action);
  ret = action->handler(irq, action->dev_id);
  trace_irq_handler_exit(irq, action, ret);

  switch (ret) {
  case 128:




   ret = 129;





   if (unlikely(!action->thread_fn)) {
    warn_no_thread(irq, action);
    break;
   }
   if (likely(!test_bit(IRQTF_DIED,
          &action->thread_flags))) {
    set_bit(IRQTF_RUNTHREAD, &action->thread_flags);
    wake_up_process(action->thread);
   }


  case 129:
   status |= action->flags;
   break;

  default:
   break;
  }

  retval |= ret;
  action = action->next;
 } while (action);

 if (status & IRQF_SAMPLE_RANDOM)
  add_interrupt_randomness(irq);
 local_irq_disable();

 return retval;
}
