
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct se_portal_group {struct ft_tpg* se_tpg_fabric_ptr; } ;
struct ft_tpg {TYPE_1__* lport_acl; } ;
struct TYPE_2__ {char* name; } ;



__attribute__((used)) static char *ft_get_fabric_wwn(struct se_portal_group *se_tpg)
{
 struct ft_tpg *tpg = se_tpg->se_tpg_fabric_ptr;

 return tpg->lport_acl->name;
}
