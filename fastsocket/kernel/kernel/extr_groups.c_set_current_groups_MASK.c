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
struct group_info {int dummy; } ;
struct cred {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (struct cred*) ; 
 int FUNC1 (struct cred*) ; 
 struct cred* FUNC2 () ; 
 int FUNC3 (struct cred*,struct group_info*) ; 

int FUNC4(struct group_info *group_info)
{
	struct cred *new;
	int ret;

	new = FUNC2();
	if (!new)
		return -ENOMEM;

	ret = FUNC3(new, group_info);
	if (ret < 0) {
		FUNC0(new);
		return ret;
	}

	return FUNC1(new);
}