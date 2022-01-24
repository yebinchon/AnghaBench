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
 int /*<<< orphan*/  FUNC0 (struct seq_file*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  rcu_bh_state ; 
 int /*<<< orphan*/  rcu_preempt_state ; 
 int /*<<< orphan*/  rcu_sched_state ; 
 int /*<<< orphan*/  FUNC1 (struct seq_file*,char*) ; 

__attribute__((used)) static int FUNC2(struct seq_file *m, void *unused)
{
#ifdef CONFIG_TREE_PREEMPT_RCU
	seq_puts(m, "rcu_preempt:\n");
	print_rcu_pendings(m, &rcu_preempt_state);
#endif /* #ifdef CONFIG_TREE_PREEMPT_RCU */
	FUNC1(m, "rcu_sched:\n");
	FUNC0(m, &rcu_sched_state);
	FUNC1(m, "rcu_bh:\n");
	FUNC0(m, &rcu_bh_state);
	return 0;
}