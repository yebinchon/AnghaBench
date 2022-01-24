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
struct inode {int /*<<< orphan*/  i_mode; } ;

/* Variables and functions */
 int FUNC0 (struct vfsmount*) ; 
 int FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int FUNC4(struct inode *inode,
					  struct vfsmount *mnt)
{
	int error;
	error = FUNC1(inode);
	if (error)
		return error;
	/*
	 * Do not take mount writer counts on
	 * special files since no writes to
	 * the mount itself will occur.
	 */
	if (!FUNC3(inode->i_mode)) {
		/*
		 * Balanced in __fput()
		 */
		error = FUNC0(mnt);
		if (error)
			FUNC2(inode);
	}
	return error;
}