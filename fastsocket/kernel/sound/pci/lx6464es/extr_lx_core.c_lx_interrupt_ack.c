
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct lx6464es {int dummy; } ;


 int MASK_SYS_ASYNC_EVENTS ;
 int MASK_SYS_STATUS_ESA ;
 int PCX_IRQ_NONE ;
 int lx_interrupt_test_ack (struct lx6464es*) ;

__attribute__((used)) static int lx_interrupt_ack(struct lx6464es *chip, u32 *r_irqsrc,
       int *r_async_pending, int *r_async_escmd)
{
 u32 irq_async;
 u32 irqsrc = lx_interrupt_test_ack(chip);

 if (irqsrc == PCX_IRQ_NONE)
  return 0;

 *r_irqsrc = irqsrc;

 irq_async = irqsrc & MASK_SYS_ASYNC_EVENTS;


 if (irq_async & MASK_SYS_STATUS_ESA) {
  irq_async &= ~MASK_SYS_STATUS_ESA;
  *r_async_escmd = 1;
 }

 if (irq_async) {

  *r_async_pending = 1;
 }

 return 1;
}
