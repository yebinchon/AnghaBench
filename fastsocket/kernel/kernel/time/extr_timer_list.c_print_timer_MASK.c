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
typedef  scalar_t__ u64 ;
struct seq_file {int dummy; } ;
struct hrtimer {int /*<<< orphan*/  start_pid; int /*<<< orphan*/  start_comm; struct hrtimer* start_site; int /*<<< orphan*/  state; struct hrtimer* function; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct seq_file*,char*,...) ; 
 int TASK_COMM_LEN ; 
 int /*<<< orphan*/  FUNC1 (struct hrtimer*) ; 
 int /*<<< orphan*/  FUNC2 (struct hrtimer*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct seq_file*,struct hrtimer*) ; 

__attribute__((used)) static void
FUNC6(struct seq_file *m, struct hrtimer *taddr, struct hrtimer *timer,
	    int idx, u64 now)
{
#ifdef CONFIG_TIMER_STATS
	char tmp[TASK_COMM_LEN + 1];
#endif
	FUNC0(m, " #%d: ", idx);
	FUNC5(m, taddr);
	FUNC0(m, ", ");
	FUNC5(m, timer->function);
	FUNC0(m, ", S:%02lx", timer->state);
#ifdef CONFIG_TIMER_STATS
	SEQ_printf(m, ", ");
	print_name_offset(m, timer->start_site);
	memcpy(tmp, timer->start_comm, TASK_COMM_LEN);
	tmp[TASK_COMM_LEN] = 0;
	SEQ_printf(m, ", %s/%d", tmp, timer->start_pid);
#endif
	FUNC0(m, "\n");
	FUNC0(m, " # expires at %Lu-%Lu nsecs [in %Ld to %Ld nsecs]\n",
		(unsigned long long)FUNC3(FUNC2(timer)),
		(unsigned long long)FUNC3(FUNC1(timer)),
		(long long)(FUNC3(FUNC2(timer)) - now),
		(long long)(FUNC3(FUNC1(timer)) - now));
}