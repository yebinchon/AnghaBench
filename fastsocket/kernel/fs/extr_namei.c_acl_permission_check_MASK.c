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
typedef  int umode_t ;
struct inode {int i_mode; scalar_t__ i_uid; int /*<<< orphan*/  i_gid; } ;

/* Variables and functions */
 int EACCES ; 
 int EAGAIN ; 
 scalar_t__ FUNC0 (struct inode*) ; 
 int MAY_EXEC ; 
 int MAY_READ ; 
 int MAY_WRITE ; 
 int S_IRWXG ; 
 scalar_t__ FUNC1 () ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct inode *inode, int mask,
		int (*check_acl)(struct inode *inode, int mask))
{
	umode_t			mode = inode->i_mode;

	mask &= MAY_READ | MAY_WRITE | MAY_EXEC;

	if (FUNC1() == inode->i_uid)
		mode >>= 6;
	else {
		if (FUNC0(inode) && (mode & S_IRWXG) && check_acl) {
			int error = check_acl(inode, mask);
			if (error != -EAGAIN)
				return error;
		}

		if (FUNC2(inode->i_gid))
			mode >>= 3;
	}

	/*
	 * If the DACs are ok we don't need any capability check.
	 */
	if ((mask & ~mode) == 0)
		return 0;
	return -EACCES;
}