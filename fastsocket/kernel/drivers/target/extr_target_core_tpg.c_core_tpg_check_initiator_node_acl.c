
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct se_portal_group {TYPE_1__* se_tpg_tfo; int acl_node_lock; int num_node_acls; int acl_node_list; } ;
struct se_node_acl {int dynamic_node_acl; int queue_depth; int acl_list; int stats_lock; int acl_index; struct se_portal_group* se_tpg; int initiatorname; int acl_pr_ref_count; int nacl_sess_lock; int device_list_lock; int acl_free_comp; int acl_kref; int acl_sess_list; } ;
struct TYPE_2__ {int (* tpg_check_demo_mode_login_only ) (struct se_portal_group*) ;int (* get_fabric_name ) () ;int (* tpg_get_tag ) (struct se_portal_group*) ;int (* tpg_release_fabric_acl ) (struct se_portal_group*,struct se_node_acl*) ;int (* set_default_node_attributes ) (struct se_node_acl*) ;int (* tpg_get_default_depth ) (struct se_portal_group*) ;struct se_node_acl* (* tpg_alloc_fabric_acl ) (struct se_portal_group*) ;int (* tpg_check_demo_mode ) (struct se_portal_group*) ;} ;


 int INIT_LIST_HEAD (int *) ;
 int SCSI_AUTH_INTR_INDEX ;
 int TRANSPORT_IQN_LEN ;
 int atomic_set (int *,int ) ;
 scalar_t__ core_create_device_list_for_node (struct se_node_acl*) ;
 int core_free_device_list_for_node (struct se_node_acl*,struct se_portal_group*) ;
 scalar_t__ core_set_queue_depth_for_node (struct se_portal_group*,struct se_node_acl*) ;
 int core_tpg_add_node_to_devs (struct se_node_acl*,struct se_portal_group*) ;
 struct se_node_acl* core_tpg_get_initiator_node_acl (struct se_portal_group*,unsigned char*) ;
 int init_completion (int *) ;
 int kref_init (int *) ;
 int list_add_tail (int *,int *) ;
 int pr_debug (char*,int ,int ,int ,int ,unsigned char*) ;
 int scsi_get_new_index (int ) ;
 int snprintf (int ,int ,char*,unsigned char*) ;
 int spin_lock_init (int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int stub1 (struct se_portal_group*) ;
 int stub10 () ;
 struct se_node_acl* stub2 (struct se_portal_group*) ;
 int stub3 (struct se_portal_group*) ;
 int stub4 (struct se_node_acl*) ;
 int stub5 (struct se_portal_group*,struct se_node_acl*) ;
 int stub6 (struct se_portal_group*,struct se_node_acl*) ;
 int stub7 (struct se_portal_group*) ;
 int stub8 () ;
 int stub9 (struct se_portal_group*) ;

struct se_node_acl *core_tpg_check_initiator_node_acl(
 struct se_portal_group *tpg,
 unsigned char *initiatorname)
{
 struct se_node_acl *acl;

 acl = core_tpg_get_initiator_node_acl(tpg, initiatorname);
 if (acl)
  return acl;

 if (!tpg->se_tpg_tfo->tpg_check_demo_mode(tpg))
  return ((void*)0);

 acl = tpg->se_tpg_tfo->tpg_alloc_fabric_acl(tpg);
 if (!acl)
  return ((void*)0);

 INIT_LIST_HEAD(&acl->acl_list);
 INIT_LIST_HEAD(&acl->acl_sess_list);
 kref_init(&acl->acl_kref);
 init_completion(&acl->acl_free_comp);
 spin_lock_init(&acl->device_list_lock);
 spin_lock_init(&acl->nacl_sess_lock);
 atomic_set(&acl->acl_pr_ref_count, 0);
 acl->queue_depth = tpg->se_tpg_tfo->tpg_get_default_depth(tpg);
 snprintf(acl->initiatorname, TRANSPORT_IQN_LEN, "%s", initiatorname);
 acl->se_tpg = tpg;
 acl->acl_index = scsi_get_new_index(SCSI_AUTH_INTR_INDEX);
 spin_lock_init(&acl->stats_lock);
 acl->dynamic_node_acl = 1;

 tpg->se_tpg_tfo->set_default_node_attributes(acl);

 if (core_create_device_list_for_node(acl) < 0) {
  tpg->se_tpg_tfo->tpg_release_fabric_acl(tpg, acl);
  return ((void*)0);
 }

 if (core_set_queue_depth_for_node(tpg, acl) < 0) {
  core_free_device_list_for_node(acl, tpg);
  tpg->se_tpg_tfo->tpg_release_fabric_acl(tpg, acl);
  return ((void*)0);
 }





 if ((tpg->se_tpg_tfo->tpg_check_demo_mode_login_only == ((void*)0)) ||
     (tpg->se_tpg_tfo->tpg_check_demo_mode_login_only(tpg) != 1))
  core_tpg_add_node_to_devs(acl, tpg);

 spin_lock_irq(&tpg->acl_node_lock);
 list_add_tail(&acl->acl_list, &tpg->acl_node_list);
 tpg->num_node_acls++;
 spin_unlock_irq(&tpg->acl_node_lock);

 pr_debug("%s_TPG[%u] - Added DYNAMIC ACL with TCQ Depth: %d for %s"
  " Initiator Node: %s\n", tpg->se_tpg_tfo->get_fabric_name(),
  tpg->se_tpg_tfo->tpg_get_tag(tpg), acl->queue_depth,
  tpg->se_tpg_tfo->get_fabric_name(), initiatorname);

 return acl;
}
