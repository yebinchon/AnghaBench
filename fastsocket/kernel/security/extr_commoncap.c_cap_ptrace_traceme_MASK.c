#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct task_struct {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  cap_permitted; } ;
struct TYPE_3__ {int /*<<< orphan*/  cap_permitted; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_SYS_PTRACE ; 
 int EPERM ; 
 TYPE_2__* FUNC0 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct task_struct*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 

int FUNC6(struct task_struct *parent)
{
	int ret = 0;

	FUNC4();
	if (!FUNC1(FUNC2()->cap_permitted,
			  FUNC0(parent)->cap_permitted) &&
	    !FUNC3(parent, CAP_SYS_PTRACE))
		ret = -EPERM;
	FUNC5();
	return ret;
}