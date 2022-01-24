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
struct task_struct {int /*<<< orphan*/  cred_guard_mutex; } ;
struct mm_struct {int dummy; } ;

/* Variables and functions */
 struct mm_struct* FUNC0 (int) ; 
 struct mm_struct* FUNC1 (struct task_struct*) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct mm_struct *FUNC4(struct task_struct *task)
{
	struct mm_struct *mm;
	int err;

	/*
	 * Avoid racing if task exec's as we might get a new mm but validate
	 * against old credentials.
	 */
	err = FUNC2(&task->cred_guard_mutex);
	if (err)
		return FUNC0(err);

	mm = FUNC1(task);
	FUNC3(&task->cred_guard_mutex);

	return mm;
}