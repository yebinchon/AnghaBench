
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct se_lun {int dummy; } ;
struct se_portal_group {struct se_lun tpg_virt_lun0; } ;


 int core_tpg_post_dellun (struct se_portal_group*,struct se_lun*) ;

__attribute__((used)) static void core_tpg_release_virtual_lun0(struct se_portal_group *se_tpg)
{
 struct se_lun *lun = &se_tpg->tpg_virt_lun0;

 core_tpg_post_dellun(se_tpg, lun);
}
