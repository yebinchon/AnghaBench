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
struct inode {scalar_t__ i_nlink; int /*<<< orphan*/  i_count; int /*<<< orphan*/  i_ctime; int /*<<< orphan*/  i_sb; } ;
struct dentry {struct inode* d_inode; } ;
struct TYPE_2__ {scalar_t__ s_link_max; } ;

/* Variables and functions */
 int /*<<< orphan*/  CURRENT_TIME_SEC ; 
 int EMLINK ; 
 int FUNC0 (struct dentry*,struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct dentry * old_dentry, struct inode * dir,
	struct dentry *dentry)
{
	struct inode *inode = old_dentry->d_inode;

	if (inode->i_nlink >= FUNC3(inode->i_sb)->s_link_max)
		return -EMLINK;

	inode->i_ctime = CURRENT_TIME_SEC;
	FUNC2(inode);
	FUNC1(&inode->i_count);
	return FUNC0(dentry, inode);
}