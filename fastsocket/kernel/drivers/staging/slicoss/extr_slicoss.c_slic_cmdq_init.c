
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct slic_cmdqueue {int dummy; } ;
struct TYPE_3__ {int lock; } ;
struct TYPE_4__ {TYPE_1__ lock; } ;
struct adapter {scalar_t__ state; int slic_handle_ix; TYPE_2__ cmdq_done; TYPE_2__ cmdq_free; TYPE_2__ cmdq_all; } ;


 scalar_t__ ADAPT_DOWN ;
 int ASSERT (int) ;
 int SLIC_CMDQ_INITPAGES ;
 int STATUS_FAILURE ;
 int STATUS_SUCCESS ;
 int memset (TYPE_2__*,int ,int) ;
 int slic_cmdq_addcmdpage (struct adapter*,int*) ;
 int slic_cmdq_free (struct adapter*) ;
 int* slic_cmdqmem_addpage (struct adapter*) ;
 int slic_cmdqmem_init (struct adapter*) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int slic_cmdq_init(struct adapter *adapter)
{
 int i;
 u32 *pageaddr;

 ASSERT(adapter->state == ADAPT_DOWN);
 memset(&adapter->cmdq_all, 0, sizeof(struct slic_cmdqueue));
 memset(&adapter->cmdq_free, 0, sizeof(struct slic_cmdqueue));
 memset(&adapter->cmdq_done, 0, sizeof(struct slic_cmdqueue));
 spin_lock_init(&adapter->cmdq_all.lock.lock);
 spin_lock_init(&adapter->cmdq_free.lock.lock);
 spin_lock_init(&adapter->cmdq_done.lock.lock);
 slic_cmdqmem_init(adapter);
 adapter->slic_handle_ix = 1;
 for (i = 0; i < SLIC_CMDQ_INITPAGES; i++) {
  pageaddr = slic_cmdqmem_addpage(adapter);

  ASSERT(((u32) pageaddr & 0xFFFFF000) == (u32) pageaddr);

  if (!pageaddr) {
   slic_cmdq_free(adapter);
   return STATUS_FAILURE;
  }
  slic_cmdq_addcmdpage(adapter, pageaddr);
 }
 adapter->slic_handle_ix = 1;

 return STATUS_SUCCESS;
}
