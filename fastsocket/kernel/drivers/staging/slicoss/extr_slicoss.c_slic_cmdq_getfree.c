
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct slic_hostcmd {struct slic_hostcmd* next; } ;
struct TYPE_2__ {int flags; int lock; } ;
struct slic_cmdqueue {TYPE_1__ lock; struct slic_hostcmd* head; int count; } ;
struct adapter {struct slic_cmdqueue cmdq_free; } ;


 int slic_cmdq_addcmdpage (struct adapter*,int *) ;
 int slic_cmdq_getdone (struct adapter*) ;
 int * slic_cmdqmem_addpage (struct adapter*) ;
 int spin_lock_irqsave (int *,int ) ;
 int spin_unlock_irqrestore (int *,int ) ;

__attribute__((used)) static struct slic_hostcmd *slic_cmdq_getfree(struct adapter *adapter)
{
 struct slic_cmdqueue *cmdq = &adapter->cmdq_free;
 struct slic_hostcmd *cmd = ((void*)0);

lock_and_retry:
 spin_lock_irqsave(&cmdq->lock.lock, cmdq->lock.flags);
retry:
 cmd = cmdq->head;
 if (cmd) {
  cmdq->head = cmd->next;
  cmdq->count--;
  spin_unlock_irqrestore(&cmdq->lock.lock, cmdq->lock.flags);
 } else {
  slic_cmdq_getdone(adapter);
  cmd = cmdq->head;
  if (cmd) {
   goto retry;
  } else {
   u32 *pageaddr;

   spin_unlock_irqrestore(&cmdq->lock.lock,
      cmdq->lock.flags);
   pageaddr = slic_cmdqmem_addpage(adapter);
   if (pageaddr) {
    slic_cmdq_addcmdpage(adapter, pageaddr);
    goto lock_and_retry;
   }
  }
 }
 return cmd;
}
