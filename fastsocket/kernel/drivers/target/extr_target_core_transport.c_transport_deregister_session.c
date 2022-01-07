
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct target_core_fabric_ops {int (* get_fabric_name ) () ;int (* tpg_release_fabric_acl ) (struct se_portal_group*,struct se_node_acl*) ;int (* tpg_check_demo_mode_cache ) (struct se_portal_group*) ;} ;
struct se_session {struct se_node_acl* se_node_acl; int * fabric_sess_ptr; struct se_portal_group* se_tpg; int sess_list; } ;
struct se_portal_group {struct target_core_fabric_ops* se_tpg_tfo; int acl_node_lock; int num_node_acls; int session_lock; } ;
struct se_node_acl {int acl_list; scalar_t__ dynamic_node_acl; } ;


 int core_free_device_list_for_node (struct se_node_acl*,struct se_portal_group*) ;
 int core_tpg_wait_for_nacl_pr_ref (struct se_node_acl*) ;
 int list_del (int *) ;
 int pr_debug (char*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct se_portal_group*) ;
 int stub2 (struct se_portal_group*,struct se_node_acl*) ;
 int stub3 () ;
 int target_put_nacl (struct se_node_acl*) ;
 int transport_free_session (struct se_session*) ;

void transport_deregister_session(struct se_session *se_sess)
{
 struct se_portal_group *se_tpg = se_sess->se_tpg;
 struct target_core_fabric_ops *se_tfo;
 struct se_node_acl *se_nacl;
 unsigned long flags;
 bool comp_nacl = 1;

 if (!se_tpg) {
  transport_free_session(se_sess);
  return;
 }
 se_tfo = se_tpg->se_tpg_tfo;

 spin_lock_irqsave(&se_tpg->session_lock, flags);
 list_del(&se_sess->sess_list);
 se_sess->se_tpg = ((void*)0);
 se_sess->fabric_sess_ptr = ((void*)0);
 spin_unlock_irqrestore(&se_tpg->session_lock, flags);





 se_nacl = se_sess->se_node_acl;

 spin_lock_irqsave(&se_tpg->acl_node_lock, flags);
 if (se_nacl && se_nacl->dynamic_node_acl) {
  if (!se_tfo->tpg_check_demo_mode_cache(se_tpg)) {
   list_del(&se_nacl->acl_list);
   se_tpg->num_node_acls--;
   spin_unlock_irqrestore(&se_tpg->acl_node_lock, flags);
   core_tpg_wait_for_nacl_pr_ref(se_nacl);
   core_free_device_list_for_node(se_nacl, se_tpg);
   se_tfo->tpg_release_fabric_acl(se_tpg, se_nacl);

   comp_nacl = 0;
   spin_lock_irqsave(&se_tpg->acl_node_lock, flags);
  }
 }
 spin_unlock_irqrestore(&se_tpg->acl_node_lock, flags);

 pr_debug("TARGET_CORE[%s]: Deregistered fabric_sess\n",
  se_tpg->se_tpg_tfo->get_fabric_name());





 if (se_nacl && comp_nacl == 1)
  target_put_nacl(se_nacl);

 transport_free_session(se_sess);
}
