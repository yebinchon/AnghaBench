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
struct utrace_report {int action; } ;
struct utrace {int resume; int /*<<< orphan*/  lock; } ;
struct task_struct {int dummy; } ;
typedef  enum utrace_resume_action { ____Placeholder_utrace_resume_action } utrace_resume_action ;

/* Variables and functions */
 int /*<<< orphan*/  TIF_NOTIFY_RESUME ; 
 int /*<<< orphan*/  TIF_SIGPENDING ; 
 int UTRACE_INTERRUPT ; 
 int UTRACE_REPORT ; 
 int UTRACE_RESUME ; 
 int UTRACE_STOP ; 
 int /*<<< orphan*/  FUNC0 (struct task_struct*,struct utrace*,struct utrace_report*) ; 
 int /*<<< orphan*/  FUNC1 (struct task_struct*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct task_struct *task, struct utrace *utrace,
			  struct utrace_report *report, bool will_not_stop)
{
	enum utrace_resume_action resume = report->action;

	if (resume == UTRACE_STOP)
		resume = will_not_stop ? UTRACE_REPORT : UTRACE_RESUME;

	if (resume < utrace->resume) {
		FUNC2(&utrace->lock);
		utrace->resume = resume;
		if (resume == UTRACE_INTERRUPT)
			FUNC1(task, TIF_SIGPENDING);
		else
			FUNC1(task, TIF_NOTIFY_RESUME);
		FUNC3(&utrace->lock);
	}

	FUNC0(task, utrace, report);
}