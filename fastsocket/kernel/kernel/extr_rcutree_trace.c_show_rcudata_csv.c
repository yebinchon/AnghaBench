
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;


 int PRINT_RCU_DATA (int ,int ,struct seq_file*) ;
 int print_one_rcu_data_csv ;
 int rcu_bh_data ;
 int rcu_preempt_data ;
 int rcu_sched_data ;
 int seq_puts (struct seq_file*,char*) ;

__attribute__((used)) static int show_rcudata_csv(struct seq_file *m, void *unused)
{
 seq_puts(m, "\"CPU\",\"Online?\",\"c\",\"g\",\"pq\",\"pqc\",\"pq\",");



 seq_puts(m, "\"of\",\"ri\",\"ql\",\"b\"\n");




 seq_puts(m, "\"rcu_sched:\"\n");
 PRINT_RCU_DATA(rcu_sched_data, print_one_rcu_data_csv, m);
 seq_puts(m, "\"rcu_bh:\"\n");
 PRINT_RCU_DATA(rcu_bh_data, print_one_rcu_data_csv, m);
 return 0;
}
