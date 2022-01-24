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
struct task_struct {int /*<<< orphan*/  mems_allowed; } ;
struct mm_struct {int dummy; } ;
typedef  int /*<<< orphan*/  nodemask_t ;

/* Variables and functions */
 int /*<<< orphan*/  MPOL_MF_MOVE_ALL ; 
 struct task_struct* current ; 
 int /*<<< orphan*/  FUNC0 (struct mm_struct*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct task_struct*) ; 

__attribute__((used)) static void FUNC3(struct mm_struct *mm, const nodemask_t *from,
							const nodemask_t *to)
{
	struct task_struct *tsk = current;

	tsk->mems_allowed = *to;

	FUNC0(mm, from, to, MPOL_MF_MOVE_ALL);

	FUNC1(FUNC2(tsk),&tsk->mems_allowed);
}