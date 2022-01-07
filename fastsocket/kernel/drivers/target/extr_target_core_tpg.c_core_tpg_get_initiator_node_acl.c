
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct se_portal_group {int acl_node_lock; } ;
struct se_node_acl {int dummy; } ;


 struct se_node_acl* __core_tpg_get_initiator_node_acl (struct se_portal_group*,unsigned char*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

struct se_node_acl *core_tpg_get_initiator_node_acl(
 struct se_portal_group *tpg,
 unsigned char *initiatorname)
{
 struct se_node_acl *acl;

 spin_lock_irq(&tpg->acl_node_lock);
 acl = __core_tpg_get_initiator_node_acl(tpg, initiatorname);
 spin_unlock_irq(&tpg->acl_node_lock);

 return acl;
}
