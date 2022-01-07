
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct se_node_acl {int acl_pr_ref_count; } ;


 scalar_t__ atomic_read (int *) ;
 int cpu_relax () ;

void core_tpg_wait_for_nacl_pr_ref(struct se_node_acl *nacl)
{
 while (atomic_read(&nacl->acl_pr_ref_count) != 0)
  cpu_relax();
}
