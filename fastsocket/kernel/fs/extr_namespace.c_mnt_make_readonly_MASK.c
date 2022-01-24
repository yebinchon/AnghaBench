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
struct vfsmount {int /*<<< orphan*/  mnt_flags; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  MNT_READONLY ; 
 int /*<<< orphan*/  MNT_WRITE_HOLD ; 
 scalar_t__ FUNC0 (struct vfsmount*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  vfsmount_lock ; 

__attribute__((used)) static int FUNC5(struct vfsmount *mnt)
{
	int ret = 0;

	FUNC3(&vfsmount_lock);
	mnt->mnt_flags |= MNT_WRITE_HOLD;
	/*
	 * After storing MNT_WRITE_HOLD, we'll read the counters. This store
	 * should be visible before we do.
	 */
	FUNC1();

	/*
	 * With writers on hold, if this value is zero, then there are
	 * definitely no active writers (although held writers may subsequently
	 * increment the count, they'll have to wait, and decrement it after
	 * seeing MNT_READONLY).
	 *
	 * It is OK to have counter incremented on one CPU and decremented on
	 * another: the sum will add up correctly. The danger would be when we
	 * sum up each counter, if we read a counter before it is incremented,
	 * but then read another CPU's count which it has been subsequently
	 * decremented from -- we would see more decrements than we should.
	 * MNT_WRITE_HOLD protects against this scenario, because
	 * mnt_want_write first increments count, then smp_mb, then spins on
	 * MNT_WRITE_HOLD, so it can't be decremented by another CPU while
	 * we're counting up here.
	 */
	if (FUNC0(mnt) > 0)
		ret = -EBUSY;
	else
		mnt->mnt_flags |= MNT_READONLY;
	/*
	 * MNT_READONLY must become visible before ~MNT_WRITE_HOLD, so writers
	 * that become unheld will see MNT_READONLY.
	 */
	FUNC2();
	mnt->mnt_flags &= ~MNT_WRITE_HOLD;
	FUNC4(&vfsmount_lock);
	return ret;
}