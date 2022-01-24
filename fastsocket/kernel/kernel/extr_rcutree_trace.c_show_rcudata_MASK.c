#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct seq_file {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct seq_file*) ; 
 int /*<<< orphan*/  print_one_rcu_data ; 
 int /*<<< orphan*/  rcu_bh_data ; 
 int /*<<< orphan*/  rcu_preempt_data ; 
 int /*<<< orphan*/  rcu_sched_data ; 
 int /*<<< orphan*/  FUNC1 (struct seq_file*,char*) ; 

__attribute__((used)) static int FUNC2(struct seq_file *m, void *unused)
{
#ifdef CONFIG_TREE_PREEMPT_RCU
	seq_puts(m, "rcu_preempt:\n");
	PRINT_RCU_DATA(rcu_preempt_data, print_one_rcu_data, m);
#endif /* #ifdef CONFIG_TREE_PREEMPT_RCU */
	FUNC1(m, "rcu_sched:\n");
	FUNC0(rcu_sched_data, print_one_rcu_data, m);
	FUNC1(m, "rcu_bh:\n");
	FUNC0(rcu_bh_data, print_one_rcu_data, m);
	return 0;
}