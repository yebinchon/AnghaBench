
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct se_portal_group {struct ft_tpg* se_tpg_fabric_ptr; } ;
struct ft_tpg {int index; } ;



__attribute__((used)) static u16 ft_get_tag(struct se_portal_group *se_tpg)
{
 struct ft_tpg *tpg = se_tpg->se_tpg_fabric_ptr;





 return tpg->index;
}
