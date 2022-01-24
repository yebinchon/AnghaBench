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
struct inode {int /*<<< orphan*/  i_mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_DAC_OVERRIDE ; 
 int /*<<< orphan*/  CAP_DAC_READ_SEARCH ; 
 int EACCES ; 
 int MAY_EXEC ; 
 int MAY_READ ; 
 int MAY_WRITE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct inode*,int,int (*) (struct inode*,int)) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct inode*) ; 

int FUNC4(struct inode *inode, int mask,
		int (*check_acl)(struct inode *inode, int mask))
{
	int ret;

	/*
	 * Do the basic POSIX ACL permission checks.
	 */
	ret = FUNC1(inode, mask, check_acl);
	if (ret != -EACCES)
		return ret;

	/*
	 * Read/write DACs are always overridable.
	 * Executable DACs are overridable if at least one exec bit is set.
	 */
	if (!(mask & MAY_EXEC) || FUNC3(inode))
		if (FUNC2(CAP_DAC_OVERRIDE))
			return 0;

	/*
	 * Searching includes executable on directories, else just read.
	 */
	mask &= MAY_READ | MAY_WRITE | MAY_EXEC;
	if (mask == MAY_READ || (FUNC0(inode->i_mode) && !(mask & MAY_WRITE)))
		if (FUNC2(CAP_DAC_READ_SEARCH))
			return 0;

	return -EACCES;
}