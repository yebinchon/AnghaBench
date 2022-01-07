
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct target_core_fabric_ops {char* (* tpg_get_wwn ) (struct se_portal_group*) ;int (* tpg_get_tag ) (struct se_portal_group*) ;int (* get_fabric_name ) () ;} ;
struct se_wwn {int dummy; } ;
struct se_portal_group {int se_tpg_type; int se_tpg_node; struct se_lun** tpg_lun_list; int tpg_lun_lock; int session_lock; int acl_node_lock; int tpg_sess_list; int acl_node_list; int tpg_pr_ref_count; struct se_wwn* se_tpg_wwn; struct target_core_fabric_ops* se_tpg_tfo; void* se_tpg_fabric_ptr; } ;
struct se_lun {size_t unpacked_lun; int lun_sep_lock; int lun_cmd_lock; int lun_acl_lock; int lun_cmd_list; int lun_acl_list; int lun_shutdown_comp; int lun_acl_count; int lun_status; int lun_link_magic; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int SE_LUN_LINK_MAGIC ;
 int TRANSPORT_LUN_STATUS_FREE ;
 size_t TRANSPORT_MAX_LUNS_PER_TPG ;
 int TRANSPORT_TPG_TYPE_NORMAL ;
 int array_free (struct se_lun**,size_t) ;
 struct se_lun** array_zalloc (size_t,int,int ) ;
 int atomic_set (int *,int ) ;
 scalar_t__ core_tpg_setup_virtual_lun0 (struct se_portal_group*) ;
 int init_completion (int *) ;
 int list_add_tail (int *,int *) ;
 int pr_debug (char*,int ,char*,char*,int ) ;
 int pr_err (char*) ;
 int spin_lock_bh (int *) ;
 int spin_lock_init (int *) ;
 int spin_unlock_bh (int *) ;
 int stub1 () ;
 char* stub2 (struct se_portal_group*) ;
 char* stub3 (struct se_portal_group*) ;
 int stub4 (struct se_portal_group*) ;
 int tpg_list ;
 int tpg_lock ;

int core_tpg_register(
 struct target_core_fabric_ops *tfo,
 struct se_wwn *se_wwn,
 struct se_portal_group *se_tpg,
 void *tpg_fabric_ptr,
 int se_tpg_type)
{
 struct se_lun *lun;
 u32 i;

 se_tpg->tpg_lun_list = array_zalloc(TRANSPORT_MAX_LUNS_PER_TPG,
   sizeof(struct se_lun), GFP_KERNEL);
 if (!se_tpg->tpg_lun_list) {
  pr_err("Unable to allocate struct se_portal_group->"
    "tpg_lun_list\n");
  return -ENOMEM;
 }

 for (i = 0; i < TRANSPORT_MAX_LUNS_PER_TPG; i++) {
  lun = se_tpg->tpg_lun_list[i];
  lun->unpacked_lun = i;
  lun->lun_link_magic = SE_LUN_LINK_MAGIC;
  lun->lun_status = TRANSPORT_LUN_STATUS_FREE;
  atomic_set(&lun->lun_acl_count, 0);
  init_completion(&lun->lun_shutdown_comp);
  INIT_LIST_HEAD(&lun->lun_acl_list);
  INIT_LIST_HEAD(&lun->lun_cmd_list);
  spin_lock_init(&lun->lun_acl_lock);
  spin_lock_init(&lun->lun_cmd_lock);
  spin_lock_init(&lun->lun_sep_lock);
 }

 se_tpg->se_tpg_type = se_tpg_type;
 se_tpg->se_tpg_fabric_ptr = tpg_fabric_ptr;
 se_tpg->se_tpg_tfo = tfo;
 se_tpg->se_tpg_wwn = se_wwn;
 atomic_set(&se_tpg->tpg_pr_ref_count, 0);
 INIT_LIST_HEAD(&se_tpg->acl_node_list);
 INIT_LIST_HEAD(&se_tpg->se_tpg_node);
 INIT_LIST_HEAD(&se_tpg->tpg_sess_list);
 spin_lock_init(&se_tpg->acl_node_lock);
 spin_lock_init(&se_tpg->session_lock);
 spin_lock_init(&se_tpg->tpg_lun_lock);

 if (se_tpg->se_tpg_type == TRANSPORT_TPG_TYPE_NORMAL) {
  if (core_tpg_setup_virtual_lun0(se_tpg) < 0) {
   array_free(se_tpg->tpg_lun_list,
       TRANSPORT_MAX_LUNS_PER_TPG);
   return -ENOMEM;
  }
 }

 spin_lock_bh(&tpg_lock);
 list_add_tail(&se_tpg->se_tpg_node, &tpg_list);
 spin_unlock_bh(&tpg_lock);

 pr_debug("TARGET_CORE[%s]: Allocated %s struct se_portal_group for"
  " endpoint: %s, Portal Tag: %u\n", tfo->get_fabric_name(),
  (se_tpg->se_tpg_type == TRANSPORT_TPG_TYPE_NORMAL) ?
  "Normal" : "Discovery", (tfo->tpg_get_wwn(se_tpg) == ((void*)0)) ?
  "None" : tfo->tpg_get_wwn(se_tpg), tfo->tpg_get_tag(se_tpg));

 return 0;
}
