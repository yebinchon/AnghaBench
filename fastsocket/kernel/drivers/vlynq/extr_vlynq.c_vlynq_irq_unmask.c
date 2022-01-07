
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct vlynq_device {unsigned int irq_start; TYPE_1__* remote; } ;
struct TYPE_2__ {int * int_device; } ;


 int BUG_ON (int) ;
 int VINT_ENABLE ;
 int VINT_OFFSET (int) ;
 struct vlynq_device* get_irq_chip_data (unsigned int) ;
 int readl (int *) ;
 int writel (int,int *) ;

__attribute__((used)) static void vlynq_irq_unmask(unsigned int irq)
{
 u32 val;
 struct vlynq_device *dev = get_irq_chip_data(irq);
 int virq;

 BUG_ON(!dev);
 virq = irq - dev->irq_start;
 val = readl(&dev->remote->int_device[virq >> 2]);
 val |= (VINT_ENABLE | virq) << VINT_OFFSET(virq);
 writel(val, &dev->remote->int_device[virq >> 2]);
}
