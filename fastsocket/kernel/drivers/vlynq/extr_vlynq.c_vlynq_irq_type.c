
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct vlynq_device {unsigned int irq_start; TYPE_1__* remote; } ;
struct TYPE_2__ {int * int_device; } ;


 int BUG_ON (int) ;
 int EINVAL ;





 unsigned int IRQ_TYPE_SENSE_MASK ;
 int VINT_LEVEL_LOW ;
 int VINT_OFFSET (int) ;
 int VINT_TYPE_EDGE ;
 struct vlynq_device* get_irq_chip_data (unsigned int) ;
 int readl (int *) ;
 int writel (int,int *) ;

__attribute__((used)) static int vlynq_irq_type(unsigned int irq, unsigned int flow_type)
{
 u32 val;
 struct vlynq_device *dev = get_irq_chip_data(irq);
 int virq;

 BUG_ON(!dev);
 virq = irq - dev->irq_start;
 val = readl(&dev->remote->int_device[virq >> 2]);
 switch (flow_type & IRQ_TYPE_SENSE_MASK) {
 case 130:
 case 131:
 case 132:
  val |= VINT_TYPE_EDGE << VINT_OFFSET(virq);
  val &= ~(VINT_LEVEL_LOW << VINT_OFFSET(virq));
  break;
 case 129:
  val &= ~(VINT_TYPE_EDGE << VINT_OFFSET(virq));
  val &= ~(VINT_LEVEL_LOW << VINT_OFFSET(virq));
  break;
 case 128:
  val &= ~(VINT_TYPE_EDGE << VINT_OFFSET(virq));
  val |= VINT_LEVEL_LOW << VINT_OFFSET(virq);
  break;
 default:
  return -EINVAL;
 }
 writel(val, &dev->remote->int_device[virq >> 2]);
 return 0;
}
