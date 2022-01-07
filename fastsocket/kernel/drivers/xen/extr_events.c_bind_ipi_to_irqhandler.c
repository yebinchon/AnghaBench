
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int irq_handler_t ;
typedef enum ipi_vector { ____Placeholder_ipi_vector } ipi_vector ;


 unsigned long IRQF_NO_SUSPEND ;
 int bind_ipi_to_irq (int,unsigned int) ;
 int request_irq (int,int ,unsigned long,char const*,void*) ;
 int unbind_from_irq (int) ;

int bind_ipi_to_irqhandler(enum ipi_vector ipi,
      unsigned int cpu,
      irq_handler_t handler,
      unsigned long irqflags,
      const char *devname,
      void *dev_id)
{
 int irq, retval;

 irq = bind_ipi_to_irq(ipi, cpu);
 if (irq < 0)
  return irq;

 irqflags |= IRQF_NO_SUSPEND;
 retval = request_irq(irq, handler, irqflags, devname, dev_id);
 if (retval != 0) {
  unbind_from_irq(irq);
  return retval;
 }

 return irq;
}
