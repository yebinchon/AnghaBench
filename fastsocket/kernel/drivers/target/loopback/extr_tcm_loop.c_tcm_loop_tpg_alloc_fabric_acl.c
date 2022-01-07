
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct se_node_acl {int dummy; } ;
struct tcm_loop_nacl {struct se_node_acl se_node_acl; } ;
struct se_portal_group {int dummy; } ;


 int GFP_KERNEL ;
 struct tcm_loop_nacl* kzalloc (int,int ) ;
 int pr_err (char*) ;

__attribute__((used)) static struct se_node_acl *tcm_loop_tpg_alloc_fabric_acl(
 struct se_portal_group *se_tpg)
{
 struct tcm_loop_nacl *tl_nacl;

 tl_nacl = kzalloc(sizeof(struct tcm_loop_nacl), GFP_KERNEL);
 if (!tl_nacl) {
  pr_err("Unable to allocate struct tcm_loop_nacl\n");
  return ((void*)0);
 }

 return &tl_nacl->se_node_acl;
}
