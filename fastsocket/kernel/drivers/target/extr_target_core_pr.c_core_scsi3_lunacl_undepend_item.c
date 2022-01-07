
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct se_portal_group {TYPE_2__* se_tpg_tfo; } ;
struct se_node_acl {struct se_portal_group* se_tpg; } ;
struct TYPE_3__ {int cg_item; } ;
struct se_lun_acl {TYPE_1__ se_lun_group; struct se_node_acl* se_lun_nacl; } ;
struct se_dev_entry {int pr_ref_count; struct se_lun_acl* se_lun_acl; } ;
struct TYPE_4__ {int tf_subsys; } ;


 int atomic_dec (int *) ;
 int configfs_undepend_item (int ,int *) ;
 int smp_mb__after_atomic_dec () ;

__attribute__((used)) static void core_scsi3_lunacl_undepend_item(struct se_dev_entry *se_deve)
{
 struct se_lun_acl *lun_acl = se_deve->se_lun_acl;
 struct se_node_acl *nacl;
 struct se_portal_group *tpg;



 if (!lun_acl) {
  atomic_dec(&se_deve->pr_ref_count);
  smp_mb__after_atomic_dec();
  return;
 }
 nacl = lun_acl->se_lun_nacl;
 tpg = nacl->se_tpg;

 configfs_undepend_item(tpg->se_tpg_tfo->tf_subsys,
   &lun_acl->se_lun_group.cg_item);

 atomic_dec(&se_deve->pr_ref_count);
 smp_mb__after_atomic_dec();
}
