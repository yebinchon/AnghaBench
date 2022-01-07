
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flags; int lock; } ;
struct slic_cmdqueue {TYPE_1__ lock; scalar_t__ count; int * tail; int * head; } ;
struct adapter {struct slic_cmdqueue cmdq_free; struct slic_cmdqueue cmdq_done; } ;


 int ASSERT (int ) ;
 int spin_lock_irqsave (int *,int ) ;
 int spin_unlock_irqrestore (int *,int ) ;

__attribute__((used)) static void slic_cmdq_getdone(struct adapter *adapter)
{
 struct slic_cmdqueue *done_cmdq = &adapter->cmdq_done;
 struct slic_cmdqueue *free_cmdq = &adapter->cmdq_free;

 ASSERT(free_cmdq->head == ((void*)0));
 spin_lock_irqsave(&done_cmdq->lock.lock, done_cmdq->lock.flags);

 free_cmdq->head = done_cmdq->head;
 free_cmdq->count = done_cmdq->count;
 done_cmdq->head = ((void*)0);
 done_cmdq->tail = ((void*)0);
 done_cmdq->count = 0;
 spin_unlock_irqrestore(&done_cmdq->lock.lock, done_cmdq->lock.flags);
}
