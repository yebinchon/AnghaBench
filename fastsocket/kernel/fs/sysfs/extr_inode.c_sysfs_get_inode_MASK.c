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
struct sysfs_dirent {int /*<<< orphan*/  s_ino; } ;
struct inode {int i_state; } ;

/* Variables and functions */
 int I_NEW ; 
 struct inode* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sysfs_dirent*,struct inode*) ; 
 int /*<<< orphan*/  sysfs_sb ; 

struct inode * FUNC2(struct sysfs_dirent *sd)
{
	struct inode *inode;

	inode = FUNC0(sysfs_sb, sd->s_ino);
	if (inode && (inode->i_state & I_NEW))
		FUNC1(sd, inode);

	return inode;
}