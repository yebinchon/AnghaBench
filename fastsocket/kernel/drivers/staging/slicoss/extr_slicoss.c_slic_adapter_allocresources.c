
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct adapter {int intrregistered; TYPE_3__* netdev; } ;
struct TYPE_6__ {int name; int dev; int irq; } ;
struct TYPE_4__ {int flags; int lock; } ;
struct TYPE_5__ {TYPE_1__ driver_lock; } ;


 int IRQF_SHARED ;
 int STATUS_SUCCESS ;
 int dev_err (int *,char*,int ,int) ;
 int request_irq (int ,int *,int ,int ,TYPE_3__*) ;
 TYPE_2__ slic_global ;
 int slic_interrupt ;
 int spin_lock_irqsave (int *,int ) ;
 int spin_unlock_irqrestore (int *,int ) ;

__attribute__((used)) static int slic_adapter_allocresources(struct adapter *adapter)
{
 if (!adapter->intrregistered) {
  int retval;

  spin_unlock_irqrestore(&slic_global.driver_lock.lock,
     slic_global.driver_lock.flags);

  retval = request_irq(adapter->netdev->irq,
         &slic_interrupt,
         IRQF_SHARED,
         adapter->netdev->name, adapter->netdev);

  spin_lock_irqsave(&slic_global.driver_lock.lock,
     slic_global.driver_lock.flags);

  if (retval) {
   dev_err(&adapter->netdev->dev,
    "request_irq (%s) FAILED [%x]\n",
    adapter->netdev->name, retval);
   return retval;
  }
  adapter->intrregistered = 1;
 }
 return STATUS_SUCCESS;
}
