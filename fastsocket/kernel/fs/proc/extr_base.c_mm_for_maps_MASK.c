#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct task_struct {int /*<<< orphan*/  cred_guard_mutex; } ;
struct mm_struct {int dummy; } ;
struct TYPE_2__ {struct mm_struct* mm; } ;

/* Variables and functions */
 int EACCES ; 
 struct mm_struct* FUNC0 (int) ; 
 int /*<<< orphan*/  PTRACE_MODE_READ ; 
 TYPE_1__* current ; 
 struct mm_struct* FUNC1 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC2 (struct mm_struct*) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct task_struct*,int /*<<< orphan*/ ) ; 

struct mm_struct *FUNC6(struct task_struct *task)
{
	struct mm_struct *mm;
	int err;

	err =  FUNC3(&task->cred_guard_mutex);
	if (err)
		return FUNC0(err);

	mm = FUNC1(task);
	if (mm && mm != current->mm &&
			!FUNC5(task, PTRACE_MODE_READ)) {
		FUNC2(mm);
		mm = FUNC0(-EACCES);
	}
	FUNC4(&task->cred_guard_mutex);

	return mm;
}