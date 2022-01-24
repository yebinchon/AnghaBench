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
struct utrace_report {int action; int /*<<< orphan*/  resume_action; } ;
struct utrace {int dummy; } ;
struct task_struct {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  TIF_SIGPENDING ; 
#define  UTRACE_BLOCKSTEP 133 
#define  UTRACE_INTERRUPT 132 
#define  UTRACE_REPORT 131 
#define  UTRACE_RESUME 130 
#define  UTRACE_SINGLESTEP 129 
#define  UTRACE_STOP 128 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct task_struct*,struct utrace*,struct utrace_report*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct task_struct*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC7 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC8 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC9 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC10 (struct task_struct*,struct utrace*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC11(struct task_struct *task,
				 struct utrace *utrace,
				 struct utrace_report *report)
{
	FUNC3(task, utrace, report);

	switch (report->action) {
	case UTRACE_STOP:
		FUNC10(task, utrace, report->resume_action);
		break;

	case UTRACE_INTERRUPT:
		if (!FUNC6(task))
			FUNC5(task, TIF_SIGPENDING);
		break;

	case UTRACE_BLOCKSTEP:
		if (FUNC4(FUNC1())) {
			FUNC8(task);
			break;
		}

		/*
		 * This means some callback is to blame for failing
		 * to check arch_has_block_step() itself.  Warn and
		 * then fall through to treat it as SINGLESTEP.
		 */
		FUNC0(1, "UTRACE_BLOCKSTEP when !arch_has_block_step()");

	case UTRACE_SINGLESTEP:
		if (FUNC4(FUNC2())) {
			FUNC9(task);
		} else {
			/*
			 * This means some callback is to blame for failing
			 * to check arch_has_single_step() itself.  Spew
			 * about it so the loser will fix his module.
			 */
			FUNC0(1,
			     "UTRACE_SINGLESTEP when !arch_has_single_step()");
		}
		break;

	case UTRACE_REPORT:
	case UTRACE_RESUME:
	default:
		FUNC7(task);
		break;
	}
}