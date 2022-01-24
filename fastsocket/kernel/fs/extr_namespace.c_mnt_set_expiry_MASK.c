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
struct vfsmount {int /*<<< orphan*/  mnt_expire; } ;
struct list_head {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct list_head*) ; 
 int /*<<< orphan*/  namespace_sem ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  vfsmount_lock ; 

void FUNC5(struct vfsmount *mnt, struct list_head *expiry_list)
{
	FUNC0(&namespace_sem);
	FUNC2(&vfsmount_lock);

	FUNC1(&mnt->mnt_expire, expiry_list);

	FUNC3(&vfsmount_lock);
	FUNC4(&namespace_sem);
}