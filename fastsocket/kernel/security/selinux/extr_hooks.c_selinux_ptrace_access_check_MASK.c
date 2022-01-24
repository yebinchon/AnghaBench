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
typedef  int /*<<< orphan*/  u32 ;
struct task_struct {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FILE__READ ; 
 int /*<<< orphan*/  PROCESS__PTRACE ; 
 unsigned int PTRACE_MODE_READ ; 
 int /*<<< orphan*/  SECCLASS_FILE ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct task_struct*,unsigned int) ; 
 int FUNC2 (struct task_struct*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct task_struct*) ; 

__attribute__((used)) static int FUNC5(struct task_struct *child,
				     unsigned int mode)
{
	int rc;

	rc = FUNC1(child, mode);
	if (rc)
		return rc;

	if (mode == PTRACE_MODE_READ) {
		u32 sid = FUNC3();
		u32 csid = FUNC4(child);
		return FUNC0(sid, csid, SECCLASS_FILE, FILE__READ, NULL);
	}

	return FUNC2(child, PROCESS__PTRACE);
}