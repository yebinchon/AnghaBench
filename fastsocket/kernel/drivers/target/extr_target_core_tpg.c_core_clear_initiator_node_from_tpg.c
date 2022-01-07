
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct se_portal_group {TYPE_1__* se_tpg_tfo; } ;
struct se_node_acl {int device_list_lock; struct se_dev_entry** device_list; } ;
struct se_lun {int dummy; } ;
struct se_dev_entry {int lun_flags; int mapped_lun; struct se_lun* se_lun; } ;
struct TYPE_2__ {int (* get_fabric_name ) () ;} ;


 int TRANSPORT_LUNFLAGS_INITIATOR_ACCESS ;
 int TRANSPORT_LUNFLAGS_NO_ACCESS ;
 int TRANSPORT_MAX_LUNS_PER_TPG ;
 int core_disable_device_list_for_node (struct se_lun*,int *,int ,int ,struct se_node_acl*,struct se_portal_group*) ;
 int pr_err (char*,int ) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int stub1 () ;

__attribute__((used)) static void core_clear_initiator_node_from_tpg(
 struct se_node_acl *nacl,
 struct se_portal_group *tpg)
{
 int i;
 struct se_dev_entry *deve;
 struct se_lun *lun;

 spin_lock_irq(&nacl->device_list_lock);
 for (i = 0; i < TRANSPORT_MAX_LUNS_PER_TPG; i++) {
  deve = nacl->device_list[i];

  if (!(deve->lun_flags & TRANSPORT_LUNFLAGS_INITIATOR_ACCESS))
   continue;

  if (!deve->se_lun) {
   pr_err("%s device entries device pointer is"
    " NULL, but Initiator has access.\n",
    tpg->se_tpg_tfo->get_fabric_name());
   continue;
  }

  lun = deve->se_lun;
  spin_unlock_irq(&nacl->device_list_lock);
  core_disable_device_list_for_node(lun, ((void*)0), deve->mapped_lun,
   TRANSPORT_LUNFLAGS_NO_ACCESS, nacl, tpg);

  spin_lock_irq(&nacl->device_list_lock);
 }
 spin_unlock_irq(&nacl->device_list_lock);
}
