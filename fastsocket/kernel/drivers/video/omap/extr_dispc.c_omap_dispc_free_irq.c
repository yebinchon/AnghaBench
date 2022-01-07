
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* irq_handlers; } ;
struct TYPE_3__ {void (* callback ) (void*) ;void* data; scalar_t__ irq_mask; } ;


 int BUG () ;
 int MAX_IRQ_HANDLERS ;
 TYPE_2__ dispc ;
 int recalc_irq_mask () ;

void omap_dispc_free_irq(unsigned long irq_mask, void (*callback)(void *data),
    void *data)
{
 int i;

 for (i = 0; i < MAX_IRQ_HANDLERS; i++) {
  if (dispc.irq_handlers[i].callback == callback &&
      dispc.irq_handlers[i].data == data) {
   dispc.irq_handlers[i].irq_mask = 0;
   dispc.irq_handlers[i].callback = ((void*)0);
   dispc.irq_handlers[i].data = ((void*)0);
   recalc_irq_mask();
   return;
  }
 }

 BUG();
}
