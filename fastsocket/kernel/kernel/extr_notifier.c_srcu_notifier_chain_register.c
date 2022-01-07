
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct srcu_notifier_head {int mutex; int head; } ;
struct notifier_block {int dummy; } ;


 scalar_t__ SYSTEM_BOOTING ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int notifier_chain_register (int *,struct notifier_block*) ;
 scalar_t__ system_state ;
 scalar_t__ unlikely (int) ;

int srcu_notifier_chain_register(struct srcu_notifier_head *nh,
  struct notifier_block *n)
{
 int ret;






 if (unlikely(system_state == SYSTEM_BOOTING))
  return notifier_chain_register(&nh->head, n);

 mutex_lock(&nh->mutex);
 ret = notifier_chain_register(&nh->head, n);
 mutex_unlock(&nh->mutex);
 return ret;
}
