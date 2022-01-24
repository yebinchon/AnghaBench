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
struct vfsmount {int mnt_flags; } ;

/* Variables and functions */
 int EROFS ; 
 int MNT_WRITE_HOLD ; 
 scalar_t__ FUNC0 (struct vfsmount*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct vfsmount*) ; 
 int /*<<< orphan*/  FUNC3 (struct vfsmount*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 

int FUNC8(struct vfsmount *mnt)
{
	int ret = 0;

	FUNC4();
	FUNC3(mnt);
	/*
	 * The store to inc_mnt_writers must be visible before we pass
	 * MNT_WRITE_HOLD loop below, so that the slowpath can see our
	 * incremented count after it has set MNT_WRITE_HOLD.
	 */
	FUNC6();
	while (mnt->mnt_flags & MNT_WRITE_HOLD)
		FUNC1();
	/*
	 * After the slowpath clears MNT_WRITE_HOLD, mnt_is_readonly will
	 * be set to match its requirements. So we must not load that until
	 * MNT_WRITE_HOLD is cleared.
	 */
	FUNC7();
	if (FUNC0(mnt)) {
		FUNC2(mnt);
		ret = -EROFS;
		goto out;
	}
out:
	FUNC5();

	return ret;
}