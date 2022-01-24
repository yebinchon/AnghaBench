#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct nameidata {int dummy; } ;
struct inode {TYPE_4__* i_sb; } ;
struct TYPE_7__ {scalar_t__ len; } ;
struct dentry {TYPE_2__ d_name; int /*<<< orphan*/  d_op; } ;
typedef  scalar_t__ ino_t ;
struct TYPE_9__ {TYPE_1__* s_root; } ;
struct TYPE_8__ {scalar_t__ s_namelen; } ;
struct TYPE_6__ {int /*<<< orphan*/  d_op; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENAMETOOLONG ; 
 struct dentry* FUNC0 (struct inode*) ; 
 struct dentry* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (struct dentry*,struct inode*) ; 
 struct inode* FUNC4 (TYPE_4__*,scalar_t__) ; 
 scalar_t__ FUNC5 (struct dentry*) ; 
 TYPE_3__* FUNC6 (TYPE_4__*) ; 

__attribute__((used)) static struct dentry *FUNC7(struct inode * dir, struct dentry *dentry, struct nameidata *nd)
{
	struct inode * inode = NULL;
	ino_t ino;

	dentry->d_op = dir->i_sb->s_root->d_op;

	if (dentry->d_name.len > FUNC6(dir->i_sb)->s_namelen)
		return FUNC1(-ENAMETOOLONG);

	ino = FUNC5(dentry);
	if (ino) {
		inode = FUNC4(dir->i_sb, ino);
		if (FUNC2(inode))
			return FUNC0(inode);
	}
	FUNC3(dentry, inode);
	return NULL;
}