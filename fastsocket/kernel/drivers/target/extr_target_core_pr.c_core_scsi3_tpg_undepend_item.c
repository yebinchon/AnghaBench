
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int cg_item; } ;
struct se_portal_group {int tpg_pr_ref_count; TYPE_2__ tpg_group; TYPE_1__* se_tpg_tfo; } ;
struct TYPE_3__ {int tf_subsys; } ;


 int atomic_dec (int *) ;
 int configfs_undepend_item (int ,int *) ;
 int smp_mb__after_atomic_dec () ;

__attribute__((used)) static void core_scsi3_tpg_undepend_item(struct se_portal_group *tpg)
{
 configfs_undepend_item(tpg->se_tpg_tfo->tf_subsys,
   &tpg->tpg_group.cg_item);

 atomic_dec(&tpg->tpg_pr_ref_count);
 smp_mb__after_atomic_dec();
}
