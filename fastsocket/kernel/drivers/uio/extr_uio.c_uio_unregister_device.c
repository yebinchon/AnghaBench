
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uio_info {scalar_t__ irq; struct uio_device* uio_dev; } ;
struct uio_device {int minor; int dev; } ;
struct TYPE_2__ {int class; } ;


 int MKDEV (int ,int ) ;
 int dev_set_drvdata (int ,int *) ;
 int device_destroy (int ,int ) ;
 int free_irq (scalar_t__,struct uio_device*) ;
 int kfree (struct uio_device*) ;
 TYPE_1__* uio_class ;
 int uio_class_destroy () ;
 int uio_dev_del_attributes (struct uio_device*) ;
 int uio_free_minor (struct uio_device*) ;
 int uio_major ;

void uio_unregister_device(struct uio_info *info)
{
 struct uio_device *idev;

 if (!info || !info->uio_dev)
  return;

 idev = info->uio_dev;

 uio_free_minor(idev);

 if (info->irq >= 0)
  free_irq(info->irq, idev);

 uio_dev_del_attributes(idev);

 dev_set_drvdata(idev->dev, ((void*)0));
 device_destroy(uio_class->class, MKDEV(uio_major, idev->minor));
 kfree(idev);
 uio_class_destroy();

 return;
}
