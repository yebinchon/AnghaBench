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
struct task_struct {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct task_struct*) ; 
 struct task_struct* FUNC1 (struct task_struct*) ; 
 scalar_t__ FUNC2 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC3 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 scalar_t__ FUNC6 (struct task_struct*) ; 

__attribute__((used)) static struct task_struct *FUNC7(struct task_struct *start)
{
	struct task_struct *pos = NULL;
	FUNC4();
	if (FUNC2(start)) {
		pos = FUNC1(start);
		if (FUNC6(pos))
			pos = NULL;
		else
			FUNC0(pos);
	}
	FUNC5();
	FUNC3(start);
	return pos;
}