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
struct task_struct {struct mm_struct* mm; struct mm_struct* active_mm; } ;
struct mm_struct {int /*<<< orphan*/  mm_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct task_struct* current ; 
 int /*<<< orphan*/  FUNC1 (struct mm_struct*) ; 
 int /*<<< orphan*/  FUNC2 (struct mm_struct*,struct mm_struct*,struct task_struct*) ; 
 int /*<<< orphan*/  FUNC3 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC4 (struct task_struct*) ; 

void FUNC5(struct mm_struct *mm)
{
	struct mm_struct *active_mm;
	struct task_struct *tsk = current;

	FUNC3(tsk);
	active_mm = tsk->active_mm;
	if (active_mm != mm) {
		FUNC0(&mm->mm_count);
		tsk->active_mm = mm;
	}
	tsk->mm = mm;
	FUNC2(active_mm, mm, tsk);
	FUNC4(tsk);

	if (active_mm != mm)
		FUNC1(active_mm);
}