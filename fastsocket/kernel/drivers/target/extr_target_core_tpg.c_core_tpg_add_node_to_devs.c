
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct se_portal_group {int tpg_lun_lock; TYPE_2__* se_tpg_tfo; struct se_lun** tpg_lun_list; } ;
struct se_node_acl {int dummy; } ;
struct se_lun {scalar_t__ lun_status; int unpacked_lun; struct se_device* lun_se_dev; } ;
struct se_device {TYPE_1__* transport; } ;
struct TYPE_4__ {int (* tpg_get_tag ) (struct se_portal_group*) ;int (* get_fabric_name ) () ;int (* tpg_check_demo_mode_write_protect ) (struct se_portal_group*) ;} ;
struct TYPE_3__ {scalar_t__ (* get_device_type ) (struct se_device*) ;} ;


 scalar_t__ TRANSPORT_LUNFLAGS_READ_ONLY ;
 scalar_t__ TRANSPORT_LUNFLAGS_READ_WRITE ;
 scalar_t__ TRANSPORT_LUN_STATUS_ACTIVE ;
 int TRANSPORT_MAX_LUNS_PER_TPG ;
 scalar_t__ TYPE_DISK ;
 int core_enable_device_list_for_node (struct se_lun*,int *,int ,scalar_t__,struct se_node_acl*,struct se_portal_group*) ;
 int pr_debug (char*,int ,int ,int ,char*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stub1 (struct se_portal_group*) ;
 scalar_t__ stub2 (struct se_device*) ;
 int stub3 () ;
 int stub4 (struct se_portal_group*) ;

void core_tpg_add_node_to_devs(
 struct se_node_acl *acl,
 struct se_portal_group *tpg)
{
 int i = 0;
 u32 lun_access = 0;
 struct se_lun *lun;
 struct se_device *dev;

 spin_lock(&tpg->tpg_lun_lock);
 for (i = 0; i < TRANSPORT_MAX_LUNS_PER_TPG; i++) {
  lun = tpg->tpg_lun_list[i];
  if (lun->lun_status != TRANSPORT_LUN_STATUS_ACTIVE)
   continue;

  spin_unlock(&tpg->tpg_lun_lock);

  dev = lun->lun_se_dev;




  if (!tpg->se_tpg_tfo->tpg_check_demo_mode_write_protect(tpg)) {
   lun_access = TRANSPORT_LUNFLAGS_READ_WRITE;
  } else {




   if (dev->transport->get_device_type(dev) == TYPE_DISK)
    lun_access = TRANSPORT_LUNFLAGS_READ_ONLY;
   else
    lun_access = TRANSPORT_LUNFLAGS_READ_WRITE;
  }

  pr_debug("TARGET_CORE[%s]->TPG[%u]_LUN[%u] - Adding %s"
   " access for LUN in Demo Mode\n",
   tpg->se_tpg_tfo->get_fabric_name(),
   tpg->se_tpg_tfo->tpg_get_tag(tpg), lun->unpacked_lun,
   (lun_access == TRANSPORT_LUNFLAGS_READ_WRITE) ?
   "READ-WRITE" : "READ-ONLY");

  core_enable_device_list_for_node(lun, ((void*)0), lun->unpacked_lun,
    lun_access, acl, tpg);
  spin_lock(&tpg->tpg_lun_lock);
 }
 spin_unlock(&tpg->tpg_lun_lock);
}
