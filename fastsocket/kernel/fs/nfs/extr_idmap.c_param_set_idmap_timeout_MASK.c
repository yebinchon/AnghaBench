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
struct kernel_param {scalar_t__ arg; } ;

/* Variables and functions */
 int EINVAL ; 
 int HZ ; 
 int FUNC0 (char const*,char**,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(const char *val, struct kernel_param *kp)
{
	char *endp;
	int num = FUNC0(val, &endp, 0);
	int jif = num * HZ;
	if (endp == val || *endp || num < 0 || jif < num)
		return -EINVAL;
	*((int *)kp->arg) = jif;
	return 0;
}