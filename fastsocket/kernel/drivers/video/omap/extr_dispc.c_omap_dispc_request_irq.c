
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* irq_handlers; } ;
struct TYPE_3__ {void (* callback ) (void*) ;unsigned long irq_mask; void* data; } ;


 int BUG_ON (int ) ;
 int EBUSY ;
 int MAX_IRQ_HANDLERS ;
 TYPE_2__ dispc ;
 int recalc_irq_mask () ;

int omap_dispc_request_irq(unsigned long irq_mask, void (*callback)(void *data),
      void *data)
{
 int i;

 BUG_ON(callback == ((void*)0));

 for (i = 0; i < MAX_IRQ_HANDLERS; i++) {
  if (dispc.irq_handlers[i].callback)
   continue;

  dispc.irq_handlers[i].irq_mask = irq_mask;
  dispc.irq_handlers[i].callback = callback;
  dispc.irq_handlers[i].data = data;
  recalc_irq_mask();

  return 0;
 }

 return -EBUSY;
}
