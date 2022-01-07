
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {struct nsproxy* nsproxy; } ;
struct nsproxy {int count; } ;


 scalar_t__ atomic_dec_and_test (int *) ;
 int free_nsproxy (struct nsproxy*) ;
 int might_sleep () ;
 int rcu_assign_pointer (struct nsproxy*,struct nsproxy*) ;
 int synchronize_rcu () ;

void switch_task_namespaces(struct task_struct *p, struct nsproxy *new)
{
 struct nsproxy *ns;

 might_sleep();

 ns = p->nsproxy;

 rcu_assign_pointer(p->nsproxy, new);

 if (ns && atomic_dec_and_test(&ns->count)) {






  synchronize_rcu();
  free_nsproxy(ns);
 }
}
