
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_6__ {TYPE_2__* irq; scalar_t__ base; } ;
struct TYPE_5__ {TYPE_1__* callback; } ;
struct TYPE_4__ {void (* func ) (int,int,void*) ;void* priv_data; } ;


 scalar_t__* TSI148_LCSR_VIACK ;
 int ioread8 (scalar_t__) ;
 int printk (char*,int,int) ;
 TYPE_3__* tsi148_bridge ;

__attribute__((used)) static u32 tsi148_VIRQ_irqhandler(u32 stat)
{
 int vec, i, serviced = 0;
 void (*call)(int, int, void *);
 void *priv_data;

 for (i = 7; i > 0; i--) {
  if (stat & (1 << i)) {






   vec = ioread8(tsi148_bridge->base +
    TSI148_LCSR_VIACK[i] + 3);

   call = tsi148_bridge->irq[i - 1].callback[vec].func;
   priv_data =
    tsi148_bridge->irq[i-1].callback[vec].priv_data;

   if (call != ((void*)0))
    call(i, vec, priv_data);
   else
    printk("Spurilous VME interrupt, level:%x, "
     "vector:%x\n", i, vec);

   serviced |= (1 << i);
  }
 }

 return serviced;
}
