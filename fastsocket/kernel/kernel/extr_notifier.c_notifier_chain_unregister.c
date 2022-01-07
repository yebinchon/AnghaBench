
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {struct notifier_block* next; } ;


 int ENOENT ;
 int rcu_assign_pointer (struct notifier_block*,struct notifier_block*) ;

__attribute__((used)) static int notifier_chain_unregister(struct notifier_block **nl,
  struct notifier_block *n)
{
 while ((*nl) != ((void*)0)) {
  if ((*nl) == n) {
   rcu_assign_pointer(*nl, n->next);
   return 0;
  }
  nl = &((*nl)->next);
 }
 return -ENOENT;
}
