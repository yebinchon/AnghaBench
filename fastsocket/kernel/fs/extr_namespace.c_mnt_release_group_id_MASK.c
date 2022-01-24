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
struct vfsmount {int mnt_group_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  mnt_group_ida ; 
 int mnt_group_start ; 

void FUNC1(struct vfsmount *mnt)
{
	int id = mnt->mnt_group_id;
	FUNC0(&mnt_group_ida, id);
	if (mnt_group_start > id)
		mnt_group_start = id;
	mnt->mnt_group_id = 0;
}