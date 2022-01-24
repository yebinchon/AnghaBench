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
struct cred {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct task_struct*,struct cred const*,int,int) ; 
 int FUNC1 (struct task_struct*,struct cred const*,int,int) ; 

__attribute__((used)) static int FUNC2(struct task_struct *tsk, const struct cred *cred,
			   int cap, int audit)
{
	int rc;

	rc = FUNC0(tsk, cred, cap, audit);
	if (rc)
		return rc;

	return FUNC1(tsk, cred, cap, audit);
}