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
 unsigned long NFS_CALLBACK_MAXPORTNR ; 
 int FUNC0 (char const*,int /*<<< orphan*/ ,unsigned long*) ; 

__attribute__((used)) static int FUNC1(const char *val, struct kernel_param *kp)
{
	unsigned long num;
	int ret;

	if (!val)
		return -EINVAL;
	ret = FUNC0(val, 0, &num);
	if (ret == -EINVAL || num > NFS_CALLBACK_MAXPORTNR)
		return -EINVAL;
	*((unsigned int *)kp->arg) = num;
	return 0;
}