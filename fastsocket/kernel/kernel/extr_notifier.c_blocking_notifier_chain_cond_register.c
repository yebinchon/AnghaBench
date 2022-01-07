
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;
struct blocking_notifier_head {int rwsem; int head; } ;


 int down_write (int *) ;
 int notifier_chain_cond_register (int *,struct notifier_block*) ;
 int up_write (int *) ;

int blocking_notifier_chain_cond_register(struct blocking_notifier_head *nh,
  struct notifier_block *n)
{
 int ret;

 down_write(&nh->rwsem);
 ret = notifier_chain_cond_register(&nh->head, n);
 up_write(&nh->rwsem);
 return ret;
}
