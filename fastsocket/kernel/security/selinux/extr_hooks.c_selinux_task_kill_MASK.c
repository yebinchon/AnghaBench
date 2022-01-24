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
typedef  scalar_t__ u32 ;
struct task_struct {int dummy; } ;
struct siginfo {int dummy; } ;

/* Variables and functions */
 scalar_t__ PROCESS__SIGNULL ; 
 int /*<<< orphan*/  SECCLASS_PROCESS ; 
 int FUNC0 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct task_struct*,scalar_t__) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct task_struct*) ; 

__attribute__((used)) static int FUNC4(struct task_struct *p, struct siginfo *info,
				int sig, u32 secid)
{
	u32 perm;
	int rc;

	if (!sig)
		perm = PROCESS__SIGNULL; /* null signal; existence test */
	else
		perm = FUNC2(sig);
	if (secid)
		rc = FUNC0(secid, FUNC3(p),
				  SECCLASS_PROCESS, perm, NULL);
	else
		rc = FUNC1(p, perm);
	return rc;
}