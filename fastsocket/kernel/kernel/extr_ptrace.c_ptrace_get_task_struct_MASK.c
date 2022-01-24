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
typedef  int /*<<< orphan*/  pid_t ;

/* Variables and functions */
 struct task_struct* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ESRCH ; 
 struct task_struct* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static struct task_struct *FUNC5(pid_t pid)
{
	struct task_struct *child;

	FUNC3();
	child = FUNC1(pid);
	if (child)
		FUNC2(child);
	FUNC4();

	if (!child)
		return FUNC0(-ESRCH);
	return child;
}