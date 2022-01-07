
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;


 int print_one_rcu_state (struct seq_file*,int *) ;
 int rcu_bh_state ;
 int rcu_preempt_state ;
 int rcu_sched_state ;
 int seq_puts (struct seq_file*,char*) ;

__attribute__((used)) static int show_rcuhier(struct seq_file *m, void *unused)
{




 seq_puts(m, "rcu_sched:\n");
 print_one_rcu_state(m, &rcu_sched_state);
 seq_puts(m, "rcu_bh:\n");
 print_one_rcu_state(m, &rcu_bh_state);
 return 0;
}
