
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rcu_head {int dummy; } ;


 scalar_t__ atomic_dec_and_test (int *) ;
 int complete (int *) ;
 int rcu_barrier_completion ;
 int rcu_barrier_cpu_count ;

__attribute__((used)) static void rcu_barrier_callback(struct rcu_head *notused)
{
 if (atomic_dec_and_test(&rcu_barrier_cpu_count))
  complete(&rcu_barrier_completion);
}
