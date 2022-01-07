
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tcm_loop_tpg {TYPE_1__* tl_hba; } ;
struct se_portal_group {struct tcm_loop_tpg* se_tpg_fabric_ptr; } ;
struct TYPE_2__ {char* tl_wwn_address; } ;



__attribute__((used)) static char *tcm_loop_get_endpoint_wwn(struct se_portal_group *se_tpg)
{
 struct tcm_loop_tpg *tl_tpg = se_tpg->se_tpg_fabric_ptr;



 return &tl_tpg->tl_hba->tl_wwn_address[0];
}
