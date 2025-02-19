
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct slic_hostcmd {struct slic_hostcmd* next_all; struct sk_buff* skb; scalar_t__ busy; } ;
struct slic_cmdqueue {int dummy; } ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {struct slic_hostcmd* head; } ;
struct adapter {TYPE_1__ cmdq_done; TYPE_1__ cmdq_free; TYPE_1__ cmdq_all; } ;


 int dev_kfree_skb_irq (struct sk_buff*) ;
 int memset (TYPE_1__*,int ,int) ;
 int slic_cmdqmem_free (struct adapter*) ;

__attribute__((used)) static void slic_cmdq_free(struct adapter *adapter)
{
 struct slic_hostcmd *cmd;

 cmd = adapter->cmdq_all.head;
 while (cmd) {
  if (cmd->busy) {
   struct sk_buff *tempskb;

   tempskb = cmd->skb;
   if (tempskb) {
    cmd->skb = ((void*)0);
    dev_kfree_skb_irq(tempskb);
   }
  }
  cmd = cmd->next_all;
 }
 memset(&adapter->cmdq_all, 0, sizeof(struct slic_cmdqueue));
 memset(&adapter->cmdq_free, 0, sizeof(struct slic_cmdqueue));
 memset(&adapter->cmdq_done, 0, sizeof(struct slic_cmdqueue));
 slic_cmdqmem_free(adapter);
}
