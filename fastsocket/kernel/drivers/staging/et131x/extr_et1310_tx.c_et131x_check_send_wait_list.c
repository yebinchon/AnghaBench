
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct list_head {int dummy; } ;
struct TYPE_4__ {struct list_head* next; } ;
struct TYPE_3__ {int nWaitSend; TYPE_2__ SendWaitQueue; } ;
struct et131x_adapter {int SendWaitLock; TYPE_1__ TxRing; } ;


 scalar_t__ MP_TCB_RESOURCES_AVAILABLE (struct et131x_adapter*) ;
 int list_empty (TYPE_2__*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void et131x_check_send_wait_list(struct et131x_adapter *etdev)
{
 unsigned long flags;

 spin_lock_irqsave(&etdev->SendWaitLock, flags);

 while (!list_empty(&etdev->TxRing.SendWaitQueue) &&
    MP_TCB_RESOURCES_AVAILABLE(etdev)) {
  struct list_head *entry;

  entry = etdev->TxRing.SendWaitQueue.next;

  etdev->TxRing.nWaitSend--;
 }

 spin_unlock_irqrestore(&etdev->SendWaitLock, flags);
}
