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
 int /*<<< orphan*/  PROCESS__SETSCHED ; 
 int FUNC0 (struct task_struct*,int) ; 
 int FUNC1 (struct task_struct*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct task_struct *p, int nice)
{
	int rc;

	rc = FUNC0(p, nice);
	if (rc)
		return rc;

	return FUNC1(p, PROCESS__SETSCHED);
}