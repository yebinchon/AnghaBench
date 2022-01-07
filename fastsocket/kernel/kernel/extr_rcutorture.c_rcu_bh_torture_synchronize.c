
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rcu_bh_torture_synchronize {int completion; int head; } ;


 int call_rcu_bh (int *,int ) ;
 int init_completion (int *) ;
 int rcu_bh_torture_wakeme_after_cb ;
 int wait_for_completion (int *) ;

__attribute__((used)) static void rcu_bh_torture_synchronize(void)
{
 struct rcu_bh_torture_synchronize rcu;

 init_completion(&rcu.completion);
 call_rcu_bh(&rcu.head, rcu_bh_torture_wakeme_after_cb);
 wait_for_completion(&rcu.completion);
}
