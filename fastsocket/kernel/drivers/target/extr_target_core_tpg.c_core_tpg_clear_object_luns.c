
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct se_portal_group {int tpg_lun_lock; struct se_lun** tpg_lun_list; } ;
struct se_lun {scalar_t__ lun_status; int unpacked_lun; int * lun_se_dev; } ;


 scalar_t__ TRANSPORT_LUN_STATUS_ACTIVE ;
 int TRANSPORT_MAX_LUNS_PER_TPG ;
 int core_dev_del_lun (struct se_portal_group*,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void core_tpg_clear_object_luns(struct se_portal_group *tpg)
{
 int i;
 struct se_lun *lun;

 spin_lock(&tpg->tpg_lun_lock);
 for (i = 0; i < TRANSPORT_MAX_LUNS_PER_TPG; i++) {
  lun = tpg->tpg_lun_list[i];

  if ((lun->lun_status != TRANSPORT_LUN_STATUS_ACTIVE) ||
      (lun->lun_se_dev == ((void*)0)))
   continue;

  spin_unlock(&tpg->tpg_lun_lock);
  core_dev_del_lun(tpg, lun->unpacked_lun);
  spin_lock(&tpg->tpg_lun_lock);
 }
 spin_unlock(&tpg->tpg_lun_lock);
}
