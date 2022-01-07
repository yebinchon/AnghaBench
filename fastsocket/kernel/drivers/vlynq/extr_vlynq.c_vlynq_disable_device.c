
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct plat_vlynq_ops* platform_data; } ;
struct vlynq_device {int irq; scalar_t__ enabled; TYPE_1__ dev; } ;
struct plat_vlynq_ops {int (* off ) (struct vlynq_device*) ;} ;


 int free_irq (int ,struct vlynq_device*) ;
 int stub1 (struct vlynq_device*) ;

void vlynq_disable_device(struct vlynq_device *dev)
{
 struct plat_vlynq_ops *ops = dev->dev.platform_data;

 dev->enabled = 0;
 free_irq(dev->irq, dev);
 ops->off(dev);
}
