
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct se_portal_group {int tpg_lun_lock; TYPE_1__* se_tpg_tfo; struct se_lun** tpg_lun_list; } ;
struct se_lun {scalar_t__ lun_status; } ;
struct TYPE_2__ {int (* tpg_get_tag ) (struct se_portal_group*) ;int (* get_fabric_name ) () ;} ;


 int EINVAL ;
 int EOVERFLOW ;
 struct se_lun* ERR_PTR (int ) ;
 scalar_t__ TRANSPORT_LUN_STATUS_ACTIVE ;
 int TRANSPORT_MAX_LUNS_PER_TPG ;
 int pr_err (char*,int,int,int,...) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stub1 () ;
 int stub2 (struct se_portal_group*) ;
 int stub3 () ;
 int stub4 (struct se_portal_group*) ;

struct se_lun *core_tpg_pre_addlun(
 struct se_portal_group *tpg,
 u32 unpacked_lun)
{
 struct se_lun *lun;

 if (unpacked_lun > (TRANSPORT_MAX_LUNS_PER_TPG-1)) {
  pr_err("%s LUN: %u exceeds TRANSPORT_MAX_LUNS_PER_TPG"
   "-1: %u for Target Portal Group: %u\n",
   tpg->se_tpg_tfo->get_fabric_name(),
   unpacked_lun, TRANSPORT_MAX_LUNS_PER_TPG-1,
   tpg->se_tpg_tfo->tpg_get_tag(tpg));
  return ERR_PTR(-EOVERFLOW);
 }

 spin_lock(&tpg->tpg_lun_lock);
 lun = tpg->tpg_lun_list[unpacked_lun];
 if (lun->lun_status == TRANSPORT_LUN_STATUS_ACTIVE) {
  pr_err("TPG Logical Unit Number: %u is already active"
   " on %s Target Portal Group: %u, ignoring request.\n",
   unpacked_lun, tpg->se_tpg_tfo->get_fabric_name(),
   tpg->se_tpg_tfo->tpg_get_tag(tpg));
  spin_unlock(&tpg->tpg_lun_lock);
  return ERR_PTR(-EINVAL);
 }
 spin_unlock(&tpg->tpg_lun_lock);

 return lun;
}
