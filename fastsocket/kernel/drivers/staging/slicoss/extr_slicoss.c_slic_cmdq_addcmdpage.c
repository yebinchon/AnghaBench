
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ ushort ;
typedef int ulong ;
typedef void* u32 ;
struct TYPE_4__ {int hosthandle; } ;
struct slic_hostcmd {int busy; struct slic_hostcmd* next; struct slic_hostcmd* next_all; void* paddrh; void* paddrl; TYPE_1__ cmd64; struct slic_handle* pslic_handle; } ;
struct TYPE_5__ {size_t handle_index; int handle_token; } ;
struct slic_handle {TYPE_2__ token; int * next; int * other_handle; scalar_t__ offset; void* address; int type; } ;
struct TYPE_6__ {int flags; int lock; } ;
struct slic_cmdqueue {int count; TYPE_3__ lock; struct slic_hostcmd* head; } ;
struct adapter {int slic_handle_ix; struct slic_cmdqueue cmdq_free; struct slic_cmdqueue cmdq_all; struct slic_handle* slic_handles; } ;


 int ASSERT (int) ;
 int SLIC_CMDQ_CMDSINPAGE ;
 void* SLIC_GET_ADDR_HIGH (int ) ;
 void* SLIC_GET_ADDR_LOW (int ) ;
 int SLIC_GET_SLIC_HANDLE (struct adapter*,struct slic_handle*) ;
 int SLIC_HANDLE_CMD ;
 scalar_t__ SLIC_HOSTCMD_SIZE ;
 int spin_lock_irqsave (int *,int ) ;
 int spin_unlock_irqrestore (int *,int ) ;
 int virt_to_bus (void*) ;

__attribute__((used)) static void slic_cmdq_addcmdpage(struct adapter *adapter, u32 *page)
{
 struct slic_hostcmd *cmd;
 struct slic_hostcmd *prev;
 struct slic_hostcmd *tail;
 struct slic_cmdqueue *cmdq;
 int cmdcnt;
 void *cmdaddr;
 ulong phys_addr;
 u32 phys_addrl;
 u32 phys_addrh;
 struct slic_handle *pslic_handle;

 cmdaddr = page;
 cmd = (struct slic_hostcmd *)cmdaddr;
 cmdcnt = 0;

 phys_addr = virt_to_bus((void *)page);
 phys_addrl = SLIC_GET_ADDR_LOW(phys_addr);
 phys_addrh = SLIC_GET_ADDR_HIGH(phys_addr);

 prev = ((void*)0);
 tail = cmd;
 while ((cmdcnt < SLIC_CMDQ_CMDSINPAGE) &&
        (adapter->slic_handle_ix < 256)) {

  SLIC_GET_SLIC_HANDLE(adapter, pslic_handle);
  if (pslic_handle == ((void*)0))
   ASSERT(0);
  ASSERT(pslic_handle ==
         &adapter->slic_handles[pslic_handle->token.
           handle_index]);
  pslic_handle->type = SLIC_HANDLE_CMD;
  pslic_handle->address = (void *) cmd;
  pslic_handle->offset = (ushort) adapter->slic_handle_ix++;
  pslic_handle->other_handle = ((void*)0);
  pslic_handle->next = ((void*)0);

  cmd->pslic_handle = pslic_handle;
  cmd->cmd64.hosthandle = pslic_handle->token.handle_token;
  cmd->busy = 0;
  cmd->paddrl = phys_addrl;
  cmd->paddrh = phys_addrh;
  cmd->next_all = prev;
  cmd->next = prev;
  prev = cmd;
  phys_addrl += SLIC_HOSTCMD_SIZE;
  cmdaddr += SLIC_HOSTCMD_SIZE;

  cmd = (struct slic_hostcmd *)cmdaddr;
  cmdcnt++;
 }

 cmdq = &adapter->cmdq_all;
 cmdq->count += cmdcnt;
 tail->next_all = cmdq->head;
 cmdq->head = prev;
 cmdq = &adapter->cmdq_free;
 spin_lock_irqsave(&cmdq->lock.lock, cmdq->lock.flags);
 cmdq->count += cmdcnt;
 tail->next = cmdq->head;
 cmdq->head = prev;
 spin_unlock_irqrestore(&cmdq->lock.lock, cmdq->lock.flags);
}
