#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct inode {int dummy; } ;
struct TYPE_3__ {char* name; int len; } ;
struct dentry {TYPE_2__* d_inode; TYPE_1__ d_name; } ;
struct TYPE_4__ {int /*<<< orphan*/  i_sb; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOENT ; 
 struct dentry* FUNC0 (struct inode*) ; 
 struct dentry* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct inode*) ; 
 struct dentry* FUNC3 (struct inode*) ; 
 struct inode* FUNC4 (int /*<<< orphan*/ ,unsigned long) ; 
 unsigned long FUNC5 (TYPE_2__*,struct dentry*) ; 

struct dentry *FUNC6(struct dentry *child)
{
	unsigned long ino;
	struct inode *inode;
	struct dentry dotdot;

	dotdot.d_name.name = "..";
	dotdot.d_name.len = 2;

	ino = FUNC5(child->d_inode, &dotdot);
	if (!ino)
		return FUNC1(-ENOENT);

	inode = FUNC4(child->d_inode->i_sb, ino);
	if (FUNC2(inode))
		return FUNC0(inode);
	return FUNC3(inode);
}