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
struct inode {int dummy; } ;
struct dentry {struct inode* d_inode; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct inode*) ; 

__attribute__((used)) static int
FUNC1(struct dentry * dentry)
{
	struct inode *inode = dentry->d_inode;

	if (inode) {
		if (FUNC0(inode))
			return 1;
	} else
	{
	/* N.B. Unhash negative dentries? */
	}
	return 0;
}