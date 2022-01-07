
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct goku_udc {int dummy; } ;
struct device {int dummy; } ;


 struct goku_udc* dev_get_drvdata (struct device*) ;
 int kfree (struct goku_udc*) ;

__attribute__((used)) static void gadget_release(struct device *_dev)
{
 struct goku_udc *dev = dev_get_drvdata(_dev);

 kfree(dev);
}
