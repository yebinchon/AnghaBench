
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct uio_device {TYPE_1__* info; } ;
typedef scalar_t__ irqreturn_t ;
struct TYPE_3__ {scalar_t__ (* handler ) (int,TYPE_1__*) ;} ;


 scalar_t__ IRQ_HANDLED ;
 scalar_t__ stub1 (int,TYPE_1__*) ;
 int uio_event_notify (TYPE_1__*) ;

__attribute__((used)) static irqreturn_t uio_interrupt(int irq, void *dev_id)
{
 struct uio_device *idev = (struct uio_device *)dev_id;
 irqreturn_t ret = idev->info->handler(irq, idev->info);

 if (ret == IRQ_HANDLED)
  uio_event_notify(idev->info);

 return ret;
}
