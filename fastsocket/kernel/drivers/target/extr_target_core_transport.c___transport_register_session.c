
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct se_session {void* fabric_sess_ptr; int sess_list; int sess_acl_list; int sess_bin_isid; struct se_portal_group* se_tpg; } ;
struct se_portal_group {TYPE_1__* se_tpg_tfo; int tpg_sess_list; } ;
struct se_node_acl {int nacl_sess_lock; int acl_sess_list; struct se_session* nacl_sess; int acl_kref; } ;
struct TYPE_2__ {int (* get_fabric_name ) () ;int (* sess_get_initiator_sid ) (struct se_session*,unsigned char*,int) ;} ;


 int PR_REG_ISID_LEN ;
 int get_unaligned_be64 (unsigned char*) ;
 int kref_get (int *) ;
 int list_add_tail (int *,int *) ;
 int memset (unsigned char*,int ,int) ;
 int pr_debug (char*,int ,void*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int stub1 (struct se_session*,unsigned char*,int) ;
 int stub2 () ;

void __transport_register_session(
 struct se_portal_group *se_tpg,
 struct se_node_acl *se_nacl,
 struct se_session *se_sess,
 void *fabric_sess_ptr)
{
 unsigned char buf[PR_REG_ISID_LEN];

 se_sess->se_tpg = se_tpg;
 se_sess->fabric_sess_ptr = fabric_sess_ptr;






 if (se_nacl) {




  if (se_tpg->se_tpg_tfo->sess_get_initiator_sid != ((void*)0)) {
   memset(&buf[0], 0, PR_REG_ISID_LEN);
   se_tpg->se_tpg_tfo->sess_get_initiator_sid(se_sess,
     &buf[0], PR_REG_ISID_LEN);
   se_sess->sess_bin_isid = get_unaligned_be64(&buf[0]);
  }
  kref_get(&se_nacl->acl_kref);

  spin_lock_irq(&se_nacl->nacl_sess_lock);




  se_nacl->nacl_sess = se_sess;

  list_add_tail(&se_sess->sess_acl_list,
         &se_nacl->acl_sess_list);
  spin_unlock_irq(&se_nacl->nacl_sess_lock);
 }
 list_add_tail(&se_sess->sess_list, &se_tpg->tpg_sess_list);

 pr_debug("TARGET_CORE[%s]: Registered fabric_sess_ptr: %p\n",
  se_tpg->se_tpg_tfo->get_fabric_name(), se_sess->fabric_sess_ptr);
}
