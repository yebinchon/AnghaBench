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
struct file {int f_flags; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct inode*) ; 
 int O_ACCMODE ; 
 int O_RDONLY ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*) ; 

void FUNC5(struct inode *inode, struct file *filp)
{
	if (FUNC0(inode)) {
		FUNC3(inode);
		if ((filp->f_flags & O_ACCMODE) != O_RDONLY)
			FUNC1(inode);
		else
			FUNC2(inode);
		FUNC4(inode);
	}
}