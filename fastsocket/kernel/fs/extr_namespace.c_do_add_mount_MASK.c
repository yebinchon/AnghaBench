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
struct path {int dummy; } ;
struct list_head {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct vfsmount*,struct path*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct list_head*) ; 
 int /*<<< orphan*/  FUNC3 (struct vfsmount*) ; 
 int /*<<< orphan*/  namespace_sem ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

int FUNC5(struct vfsmount *newmnt, struct path *path,
		 int mnt_flags, struct list_head *fslist)
{
	int err;

	FUNC1(&namespace_sem);
	err = FUNC0(newmnt, path, mnt_flags);
	if (!err) {
		if (fslist) /* add to the specified expiration list */
			FUNC2(&newmnt->mnt_expire, fslist);
	}
	FUNC4(&namespace_sem);
	if (err)
		FUNC3(newmnt);
	return err;
}