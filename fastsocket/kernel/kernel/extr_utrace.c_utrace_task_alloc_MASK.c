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
struct utrace {int /*<<< orphan*/  resume; int /*<<< orphan*/  attaching; int /*<<< orphan*/  attached; int /*<<< orphan*/  lock; } ;
struct task_struct {struct utrace* utrace; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  UTRACE_RESUME ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct utrace*) ; 
 struct utrace* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC7 (struct task_struct*) ; 
 scalar_t__ FUNC8 (int) ; 
 int /*<<< orphan*/  utrace_cachep ; 

__attribute__((used)) static bool FUNC9(struct task_struct *task)
{
	struct utrace *utrace = FUNC2(utrace_cachep, GFP_KERNEL);
	if (FUNC8(!utrace))
		return false;
	FUNC5(&utrace->lock);
	FUNC0(&utrace->attached);
	FUNC0(&utrace->attaching);
	utrace->resume = UTRACE_RESUME;
	FUNC6(task);
	if (FUNC3(!task->utrace)) {
		/*
		 * This barrier makes sure the initialization of the struct
		 * precedes the installation of the pointer.  This pairs
		 * with smp_read_barrier_depends() in task_utrace_struct().
		 */
		FUNC4();
		task->utrace = utrace;
	}
	FUNC7(task);

	if (FUNC8(task->utrace != utrace))
		FUNC1(utrace_cachep, utrace);
	return true;
}