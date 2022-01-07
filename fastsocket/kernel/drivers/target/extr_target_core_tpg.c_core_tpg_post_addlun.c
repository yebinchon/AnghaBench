
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct se_portal_group {int tpg_lun_lock; } ;
struct se_lun {int lun_status; int lun_access; } ;


 int TRANSPORT_LUN_STATUS_ACTIVE ;
 int core_dev_export (void*,struct se_portal_group*,struct se_lun*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

int core_tpg_post_addlun(
 struct se_portal_group *tpg,
 struct se_lun *lun,
 u32 lun_access,
 void *lun_ptr)
{
 int ret;

 ret = core_dev_export(lun_ptr, tpg, lun);
 if (ret < 0)
  return ret;

 spin_lock(&tpg->tpg_lun_lock);
 lun->lun_access = lun_access;
 lun->lun_status = TRANSPORT_LUN_STATUS_ACTIVE;
 spin_unlock(&tpg->tpg_lun_lock);

 return 0;
}
