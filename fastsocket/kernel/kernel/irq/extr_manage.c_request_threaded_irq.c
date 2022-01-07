
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irqaction {unsigned long flags; char const* name; void* dev_id; int (* thread_fn ) (unsigned int,void*) ;int (* handler ) (unsigned int,void*) ;} ;
struct irq_desc {int status; } ;
typedef int (* irq_handler_t ) (unsigned int,void*) ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 unsigned long IRQF_DISABLED ;
 unsigned long IRQF_SHARED ;
 int IRQ_NOREQUEST ;
 int __setup_irq (unsigned int,struct irq_desc*,struct irqaction*) ;
 int chip_bus_lock (unsigned int,struct irq_desc*) ;
 int chip_bus_sync_unlock (unsigned int,struct irq_desc*) ;
 int disable_irq (unsigned int) ;
 int enable_irq (unsigned int) ;
 int irq_default_primary_handler (unsigned int,void*) ;
 struct irq_desc* irq_to_desc (unsigned int) ;
 int kfree (struct irqaction*) ;
 struct irqaction* kzalloc (int,int ) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int pr_warning (char*,unsigned int,char const*) ;

int request_threaded_irq(unsigned int irq, irq_handler_t handler,
    irq_handler_t thread_fn, unsigned long irqflags,
    const char *devname, void *dev_id)
{
 struct irqaction *action;
 struct irq_desc *desc;
 int retval;







 if ((irqflags & (IRQF_SHARED|IRQF_DISABLED)) ==
     (IRQF_SHARED|IRQF_DISABLED)) {
  pr_warning(
    "IRQ %d/%s: IRQF_DISABLED is not guaranteed on shared IRQs\n",
   irq, devname);
 }
 if ((irqflags & IRQF_SHARED) && !dev_id)
  return -EINVAL;

 desc = irq_to_desc(irq);
 if (!desc)
  return -EINVAL;

 if (desc->status & IRQ_NOREQUEST)
  return -EINVAL;

 if (!handler) {
  if (!thread_fn)
   return -EINVAL;
  handler = irq_default_primary_handler;
 }

 action = kzalloc(sizeof(struct irqaction), GFP_KERNEL);
 if (!action)
  return -ENOMEM;

 action->handler = handler;
 action->thread_fn = thread_fn;
 action->flags = irqflags;
 action->name = devname;
 action->dev_id = dev_id;

 chip_bus_lock(irq, desc);
 retval = __setup_irq(irq, desc, action);
 chip_bus_sync_unlock(irq, desc);

 if (retval)
  kfree(action);
 return retval;
}
