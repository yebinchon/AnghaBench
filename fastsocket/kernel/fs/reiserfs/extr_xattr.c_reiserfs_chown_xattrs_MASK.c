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
struct inode {int /*<<< orphan*/  i_sb; } ;
struct iattr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  chown_one_xattr ; 
 int FUNC0 (struct inode*,int /*<<< orphan*/ ,struct iattr*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*,int) ; 

int FUNC2(struct inode *inode, struct iattr *attrs)
{
	int err = FUNC0(inode, chown_one_xattr, attrs);
	if (err)
		FUNC1(inode->i_sb, "jdm-20007",
				 "Couldn't chown all xattrs (%d)\n", err);
	return err;
}