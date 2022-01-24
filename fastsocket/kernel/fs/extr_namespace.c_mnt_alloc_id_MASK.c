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
struct vfsmount {scalar_t__ mnt_id; } ;

/* Variables and functions */
 int EAGAIN ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (int /*<<< orphan*/ *,scalar_t__,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mnt_id_ida ; 
 scalar_t__ mnt_id_start ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  vfsmount_lock ; 

__attribute__((used)) static int FUNC4(struct vfsmount *mnt)
{
	int res;

retry:
	FUNC1(&mnt_id_ida, GFP_KERNEL);
	FUNC2(&vfsmount_lock);
	res = FUNC0(&mnt_id_ida, mnt_id_start, &mnt->mnt_id);
	if (!res)
		mnt_id_start = mnt->mnt_id + 1;
	FUNC3(&vfsmount_lock);
	if (res == -EAGAIN)
		goto retry;

	return res;
}