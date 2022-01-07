
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct se_lun {int lun_sep_lock; int lun_cmd_lock; int lun_acl_lock; int lun_cmd_list; int lun_acl_list; int lun_shutdown_comp; int lun_acl_count; int lun_status; scalar_t__ unpacked_lun; } ;
struct se_portal_group {struct se_lun tpg_virt_lun0; } ;
struct se_device {int dummy; } ;


 int INIT_LIST_HEAD (int *) ;
 int TRANSPORT_LUNFLAGS_READ_ONLY ;
 int TRANSPORT_LUN_STATUS_FREE ;
 int atomic_set (int *,int ) ;
 int core_tpg_post_addlun (struct se_portal_group*,struct se_lun*,int ,struct se_device*) ;
 struct se_device* g_lun0_dev ;
 int init_completion (int *) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int core_tpg_setup_virtual_lun0(struct se_portal_group *se_tpg)
{

 struct se_device *dev = g_lun0_dev;
 struct se_lun *lun = &se_tpg->tpg_virt_lun0;
 u32 lun_access = TRANSPORT_LUNFLAGS_READ_ONLY;
 int ret;

 lun->unpacked_lun = 0;
 lun->lun_status = TRANSPORT_LUN_STATUS_FREE;
 atomic_set(&lun->lun_acl_count, 0);
 init_completion(&lun->lun_shutdown_comp);
 INIT_LIST_HEAD(&lun->lun_acl_list);
 INIT_LIST_HEAD(&lun->lun_cmd_list);
 spin_lock_init(&lun->lun_acl_lock);
 spin_lock_init(&lun->lun_cmd_lock);
 spin_lock_init(&lun->lun_sep_lock);

 ret = core_tpg_post_addlun(se_tpg, lun, lun_access, dev);
 if (ret < 0)
  return ret;

 return 0;
}
