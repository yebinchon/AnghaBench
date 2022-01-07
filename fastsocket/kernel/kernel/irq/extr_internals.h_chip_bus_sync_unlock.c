
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct irq_desc {TYPE_1__* chip; } ;
struct TYPE_2__ {int (* bus_sync_unlock ) (unsigned int) ;} ;


 int stub1 (unsigned int) ;
 scalar_t__ unlikely (int (*) (unsigned int)) ;

__attribute__((used)) static inline void chip_bus_sync_unlock(unsigned int irq, struct irq_desc *desc)
{
 if (unlikely(desc->chip->bus_sync_unlock))
  desc->chip->bus_sync_unlock(irq);
}
