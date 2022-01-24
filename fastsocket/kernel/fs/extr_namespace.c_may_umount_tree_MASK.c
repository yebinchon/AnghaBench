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
struct vfsmount {int /*<<< orphan*/  mnt_count; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 struct vfsmount* FUNC1 (struct vfsmount*,struct vfsmount*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  vfsmount_lock ; 

int FUNC4(struct vfsmount *mnt)
{
	int actual_refs = 0;
	int minimum_refs = 0;
	struct vfsmount *p;

	FUNC2(&vfsmount_lock);
	for (p = mnt; p; p = FUNC1(p, mnt)) {
		actual_refs += FUNC0(&p->mnt_count);
		minimum_refs += 2;
	}
	FUNC3(&vfsmount_lock);

	if (actual_refs > minimum_refs)
		return 0;

	return 1;
}