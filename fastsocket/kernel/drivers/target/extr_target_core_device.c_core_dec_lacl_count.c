
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct se_node_acl {int device_list_lock; struct se_dev_entry** device_list; } ;
struct se_dev_entry {int deve_cmds; } ;
struct se_cmd {size_t orig_fe_lun; } ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void core_dec_lacl_count(struct se_node_acl *se_nacl, struct se_cmd *se_cmd)
{
 struct se_dev_entry *deve;
 unsigned long flags;

 spin_lock_irqsave(&se_nacl->device_list_lock, flags);
 deve = se_nacl->device_list[se_cmd->orig_fe_lun];
 deve->deve_cmds--;
 spin_unlock_irqrestore(&se_nacl->device_list_lock, flags);
}
