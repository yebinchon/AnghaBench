
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int irq_mask; } ;


 TYPE_1__ lcdc ;

__attribute__((used)) static void inline enable_irqs(int mask)
{
 lcdc.irq_mask |= mask;
}
