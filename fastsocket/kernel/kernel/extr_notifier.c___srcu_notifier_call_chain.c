
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct srcu_notifier_head {int srcu; int head; } ;


 int notifier_call_chain (int *,unsigned long,void*,int,int*) ;
 int srcu_read_lock (int *) ;
 int srcu_read_unlock (int *,int) ;

int __srcu_notifier_call_chain(struct srcu_notifier_head *nh,
          unsigned long val, void *v,
          int nr_to_call, int *nr_calls)
{
 int ret;
 int idx;

 idx = srcu_read_lock(&nh->srcu);
 ret = notifier_call_chain(&nh->head, val, v, nr_to_call, nr_calls);
 srcu_read_unlock(&nh->srcu, idx);
 return ret;
}
