
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct slic_hostcmd {struct slic_hostcmd* next; scalar_t__ busy; } ;
struct TYPE_2__ {int lock; } ;
struct slic_cmdqueue {int count; TYPE_1__ lock; struct slic_hostcmd* head; } ;
struct adapter {int netdev; scalar_t__ xmitq_full; struct slic_cmdqueue cmdq_done; } ;


 int netif_wake_queue (int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void slic_cmdq_putdone_irq(struct adapter *adapter,
    struct slic_hostcmd *cmd)
{
 struct slic_cmdqueue *cmdq = &adapter->cmdq_done;

 spin_lock(&cmdq->lock.lock);
 cmd->busy = 0;
 cmd->next = cmdq->head;
 cmdq->head = cmd;
 cmdq->count++;
 if ((adapter->xmitq_full) && (cmdq->count > 10))
  netif_wake_queue(adapter->netdev);
 spin_unlock(&cmdq->lock.lock);
}
