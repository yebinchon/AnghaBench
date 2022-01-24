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
struct cred {scalar_t__ fsgid; int /*<<< orphan*/  group_info; } ;
typedef  scalar_t__ gid_t ;

/* Variables and functions */
 struct cred* FUNC0 () ; 
 int FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 

int FUNC2(gid_t grp)
{
	const struct cred *cred = FUNC0();
	int retval = 1;

	if (grp != cred->fsgid)
		retval = FUNC1(cred->group_info, grp);
	return retval;
}