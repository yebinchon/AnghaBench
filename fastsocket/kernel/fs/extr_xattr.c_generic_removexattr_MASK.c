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
struct xattr_handler {int (* set ) (struct inode*,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
struct inode {TYPE_1__* i_sb; } ;
struct dentry {struct inode* d_inode; } ;
struct TYPE_2__ {int /*<<< orphan*/  s_xattr; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  XATTR_REPLACE ; 
 int FUNC0 (struct inode*,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct xattr_handler* FUNC1 (int /*<<< orphan*/ ,char const**) ; 

int
FUNC2(struct dentry *dentry, const char *name)
{
	struct xattr_handler *handler;
	struct inode *inode = dentry->d_inode;

	handler = FUNC1(inode->i_sb->s_xattr, &name);
	if (!handler)
		return -EOPNOTSUPP;
	return handler->set(inode, name, NULL, 0, XATTR_REPLACE);
}