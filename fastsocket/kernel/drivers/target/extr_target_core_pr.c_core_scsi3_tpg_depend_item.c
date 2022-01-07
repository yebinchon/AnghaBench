
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int cg_item; } ;
struct se_portal_group {TYPE_2__ tpg_group; TYPE_1__* se_tpg_tfo; } ;
struct TYPE_3__ {int tf_subsys; } ;


 int configfs_depend_item (int ,int *) ;

__attribute__((used)) static int core_scsi3_tpg_depend_item(struct se_portal_group *tpg)
{
 return configfs_depend_item(tpg->se_tpg_tfo->tf_subsys,
   &tpg->tpg_group.cg_item);
}
