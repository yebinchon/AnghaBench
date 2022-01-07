
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;


 int atomic_notifier_chain_register (int *,struct notifier_block*) ;
 int task_free_notifier ;

int task_handoff_register(struct notifier_block *n)
{
 return atomic_notifier_chain_register(&task_free_notifier, n);
}
