
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct srcu_notifier_head {int srcu; int mutex; int head; } ;
struct notifier_block {int dummy; } ;


 scalar_t__ SYSTEM_BOOTING ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int notifier_chain_unregister (int *,struct notifier_block*) ;
 int synchronize_srcu (int *) ;
 scalar_t__ system_state ;
 scalar_t__ unlikely (int) ;

int srcu_notifier_chain_unregister(struct srcu_notifier_head *nh,
  struct notifier_block *n)
{
 int ret;






 if (unlikely(system_state == SYSTEM_BOOTING))
  return notifier_chain_unregister(&nh->head, n);

 mutex_lock(&nh->mutex);
 ret = notifier_chain_unregister(&nh->head, n);
 mutex_unlock(&nh->mutex);
 synchronize_srcu(&nh->srcu);
 return ret;
}
