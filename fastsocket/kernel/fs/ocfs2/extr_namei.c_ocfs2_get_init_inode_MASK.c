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
struct inode {int i_nlink; int i_mode; int /*<<< orphan*/  i_gid; int /*<<< orphan*/  i_uid; int /*<<< orphan*/  i_sb; } ;

/* Variables and functions */
 int /*<<< orphan*/  ML_ERROR ; 
 scalar_t__ FUNC0 (int) ; 
 int S_ISGID ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 struct inode* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 

__attribute__((used)) static struct inode *FUNC6(struct inode *dir, int mode)
{
	struct inode *inode;

	inode = FUNC4(dir->i_sb);
	if (!inode) {
		FUNC3(ML_ERROR, "new_inode failed!\n");
		return NULL;
	}

	/* populate as many fields early on as possible - many of
	 * these are used by the support functions here and in
	 * callers. */
	if (FUNC0(mode))
		inode->i_nlink = 2;
	else
		inode->i_nlink = 1;
	inode->i_uid = FUNC2();
	if (dir->i_mode & S_ISGID) {
		inode->i_gid = dir->i_gid;
		if (FUNC0(mode))
			mode |= S_ISGID;
	} else
		inode->i_gid = FUNC1();
	inode->i_mode = mode;
	FUNC5(inode);
	return inode;
}