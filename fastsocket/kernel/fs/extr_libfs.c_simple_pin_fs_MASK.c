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
struct file_system_type {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct vfsmount*) ; 
 int FUNC1 (struct vfsmount*) ; 
 int /*<<< orphan*/  FUNC2 (struct vfsmount*) ; 
 int /*<<< orphan*/  FUNC3 (struct vfsmount*) ; 
 int /*<<< orphan*/  pin_fs_lock ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int) ; 
 struct vfsmount* FUNC7 (struct file_system_type*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC8(struct file_system_type *type, struct vfsmount **mount, int *count)
{
	struct vfsmount *mnt = NULL;
	FUNC4(&pin_fs_lock);
	if (FUNC6(!*mount)) {
		FUNC5(&pin_fs_lock);
		mnt = FUNC7(type, 0, type->name, NULL);
		if (FUNC0(mnt))
			return FUNC1(mnt);
		FUNC4(&pin_fs_lock);
		if (!*mount)
			*mount = mnt;
	}
	FUNC2(*mount);
	++*count;
	FUNC5(&pin_fs_lock);
	FUNC3(mnt);
	return 0;
}