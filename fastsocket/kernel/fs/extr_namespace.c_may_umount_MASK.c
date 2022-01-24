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
struct vfsmount {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct vfsmount*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  vfsmount_lock ; 

int FUNC3(struct vfsmount *mnt)
{
	int ret = 1;
	FUNC1(&vfsmount_lock);
	if (FUNC0(mnt, 2))
		ret = 0;
	FUNC2(&vfsmount_lock);
	return ret;
}