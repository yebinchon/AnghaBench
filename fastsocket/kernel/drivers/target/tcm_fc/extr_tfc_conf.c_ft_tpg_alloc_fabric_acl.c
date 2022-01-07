
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct se_portal_group {int dummy; } ;
struct se_node_acl {int dummy; } ;
struct ft_node_acl {struct se_node_acl se_node_acl; } ;


 int GFP_KERNEL ;
 struct ft_node_acl* kzalloc (int,int ) ;
 int pr_debug (char*,struct ft_node_acl*) ;
 int pr_err (char*) ;

struct se_node_acl *ft_tpg_alloc_fabric_acl(struct se_portal_group *se_tpg)
{
 struct ft_node_acl *acl;

 acl = kzalloc(sizeof(*acl), GFP_KERNEL);
 if (!acl) {
  pr_err("Unable to allocate struct ft_node_acl\n");
  return ((void*)0);
 }
 pr_debug("acl %p\n", acl);
 return &acl->se_node_acl;
}
