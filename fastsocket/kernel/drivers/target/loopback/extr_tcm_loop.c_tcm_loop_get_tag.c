
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct tcm_loop_tpg {int tl_tpgt; } ;
struct se_portal_group {struct tcm_loop_tpg* se_tpg_fabric_ptr; } ;



__attribute__((used)) static u16 tcm_loop_get_tag(struct se_portal_group *se_tpg)
{
 struct tcm_loop_tpg *tl_tpg = se_tpg->se_tpg_fabric_ptr;




 return tl_tpg->tl_tpgt;
}
