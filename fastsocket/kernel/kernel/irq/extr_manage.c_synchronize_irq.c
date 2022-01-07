
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_desc {unsigned int status; int threads_active; int wait_for_threads; int lock; } ;


 unsigned int IRQ_INPROGRESS ;
 int atomic_read (int *) ;
 int cpu_relax () ;
 struct irq_desc* irq_to_desc (unsigned int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wait_event (int ,int) ;

void synchronize_irq(unsigned int irq)
{
 struct irq_desc *desc = irq_to_desc(irq);
 unsigned int status;

 if (!desc)
  return;

 do {
  unsigned long flags;





  while (desc->status & IRQ_INPROGRESS)
   cpu_relax();


  spin_lock_irqsave(&desc->lock, flags);
  status = desc->status;
  spin_unlock_irqrestore(&desc->lock, flags);


 } while (status & IRQ_INPROGRESS);





 wait_event(desc->wait_for_threads, !atomic_read(&desc->threads_active));
}
