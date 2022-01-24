#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct inode {int i_mode; int /*<<< orphan*/  i_gid; int /*<<< orphan*/  i_uid; } ;
struct TYPE_2__ {scalar_t__ k_objectid; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct inode*) ; 
 scalar_t__ FUNC1 (int) ; 
 int S_ISGID ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct inode*) ; 

__attribute__((used)) static int FUNC5(struct inode *inode, struct inode *dir, int mode)
{

	/* the quota init calls have to know who to charge the quota to, so
	 ** we have to set uid and gid here
	 */
	inode->i_uid = FUNC3();
	inode->i_mode = mode;
	/* Make inode invalid - just in case we are going to drop it before
	 * the initialization happens */
	FUNC0(inode)->k_objectid = 0;

	if (dir->i_mode & S_ISGID) {
		inode->i_gid = dir->i_gid;
		if (FUNC1(mode))
			inode->i_mode |= S_ISGID;
	} else {
		inode->i_gid = FUNC2();
	}
	FUNC4(inode);
	return 0;
}