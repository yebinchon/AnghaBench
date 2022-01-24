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

/* Variables and functions */
 int /*<<< orphan*/  CAP_SYS_ADMIN ; 
 int EPERM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ dmesg_restrict ; 

int FUNC1(int type)
{
	if (dmesg_restrict && !FUNC0(CAP_SYS_ADMIN))
		return -EPERM;

	if ((type != 3 && type != 10) && !FUNC0(CAP_SYS_ADMIN))
		return -EPERM;
	return 0;
}