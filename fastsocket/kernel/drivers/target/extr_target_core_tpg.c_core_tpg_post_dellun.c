
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct se_portal_group {int tpg_lun_lock; } ;
struct se_lun {int lun_status; int lun_se_dev; } ;


 int TRANSPORT_LUN_STATUS_FREE ;
 int core_dev_unexport (int ,struct se_portal_group*,struct se_lun*) ;
 int core_tpg_shutdown_lun (struct se_portal_group*,struct se_lun*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

int core_tpg_post_dellun(
 struct se_portal_group *tpg,
 struct se_lun *lun)
{
 core_tpg_shutdown_lun(tpg, lun);

 core_dev_unexport(lun->lun_se_dev, tpg, lun);

 spin_lock(&tpg->tpg_lun_lock);
 lun->lun_status = TRANSPORT_LUN_STATUS_FREE;
 spin_unlock(&tpg->tpg_lun_lock);

 return 0;
}
