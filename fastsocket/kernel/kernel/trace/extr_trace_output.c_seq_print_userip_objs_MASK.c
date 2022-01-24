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
struct userstack_entry {unsigned long* caller; int /*<<< orphan*/  tgid; } ;
struct trace_seq {int dummy; } ;
struct task_struct {int dummy; } ;
struct mm_struct {int dummy; } ;

/* Variables and functions */
 unsigned int FTRACE_STACK_ENTRIES ; 
 int TRACE_ITER_SYM_USEROBJ ; 
 unsigned long ULONG_MAX ; 
 struct task_struct* FUNC0 (int /*<<< orphan*/ ) ; 
 struct mm_struct* FUNC1 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC2 (struct mm_struct*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int FUNC5 (struct trace_seq*,struct mm_struct*,unsigned long,unsigned long) ; 
 int trace_flags ; 
 int FUNC6 (struct trace_seq*,char*) ; 

int
FUNC7(const struct userstack_entry *entry, struct trace_seq *s,
		      unsigned long sym_flags)
{
	struct mm_struct *mm = NULL;
	int ret = 1;
	unsigned int i;

	if (trace_flags & TRACE_ITER_SYM_USEROBJ) {
		struct task_struct *task;
		/*
		 * we do the lookup on the thread group leader,
		 * since individual threads might have already quit!
		 */
		FUNC3();
		task = FUNC0(entry->tgid);
		if (task)
			mm = FUNC1(task);
		FUNC4();
	}

	for (i = 0; i < FTRACE_STACK_ENTRIES; i++) {
		unsigned long ip = entry->caller[i];

		if (ip == ULONG_MAX || !ret)
			break;
		if (ret)
			ret = FUNC6(s, " => ");
		if (!ip) {
			if (ret)
				ret = FUNC6(s, "??");
			if (ret)
				ret = FUNC6(s, "\n");
			continue;
		}
		if (!ret)
			break;
		if (ret)
			ret = FUNC5(s, mm, ip, sym_flags);
		ret = FUNC6(s, "\n");
	}

	if (mm)
		FUNC2(mm);
	return ret;
}