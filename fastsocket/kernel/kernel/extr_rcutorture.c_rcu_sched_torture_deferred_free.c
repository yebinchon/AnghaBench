
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rcu_torture {int rtort_rcu; } ;


 int call_rcu_sched (int *,int ) ;
 int rcu_torture_cb ;

__attribute__((used)) static void rcu_sched_torture_deferred_free(struct rcu_torture *p)
{
 call_rcu_sched(&p->rtort_rcu, rcu_torture_cb);
}
