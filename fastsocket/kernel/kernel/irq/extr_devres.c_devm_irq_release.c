
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_devres {int dev_id; int irq; } ;
struct device {int dummy; } ;


 int free_irq (int ,int ) ;

__attribute__((used)) static void devm_irq_release(struct device *dev, void *res)
{
 struct irq_devres *this = res;

 free_irq(this->irq, this->dev_id);
}
