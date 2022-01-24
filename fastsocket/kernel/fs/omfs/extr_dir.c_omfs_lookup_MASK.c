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
struct TYPE_3__ {int /*<<< orphan*/  h_self; } ;
struct omfs_inode {TYPE_1__ i_head; } ;
struct nameidata {int dummy; } ;
struct inode {int /*<<< orphan*/  i_sb; scalar_t__ b_data; } ;
struct TYPE_4__ {scalar_t__ len; int /*<<< orphan*/  name; } ;
struct dentry {TYPE_2__ d_name; } ;
struct buffer_head {int /*<<< orphan*/  i_sb; scalar_t__ b_data; } ;
typedef  int /*<<< orphan*/  ino_t ;

/* Variables and functions */
 int /*<<< orphan*/  ENAMETOOLONG ; 
 struct dentry* FUNC0 (struct inode*) ; 
 struct dentry* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct inode*) ; 
 scalar_t__ OMFS_NAMELEN ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*) ; 
 int /*<<< orphan*/  FUNC5 (struct dentry*,struct inode*) ; 
 struct inode* FUNC6 (struct inode*,int /*<<< orphan*/ ,scalar_t__) ; 
 struct inode* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct dentry *FUNC8(struct inode *dir, struct dentry *dentry,
				  struct nameidata *nd)
{
	struct buffer_head *bh;
	struct inode *inode = NULL;

	if (dentry->d_name.len > OMFS_NAMELEN)
		return FUNC1(-ENAMETOOLONG);

	bh = FUNC6(dir, dentry->d_name.name, dentry->d_name.len);
	if (!FUNC2(bh)) {
		struct omfs_inode *oi = (struct omfs_inode *)bh->b_data;
		ino_t ino = FUNC3(oi->i_head.h_self);
		FUNC4(bh);
		inode = FUNC7(dir->i_sb, ino);
		if (FUNC2(inode))
			return FUNC0(inode);
	}
	FUNC5(dentry, inode);
	return NULL;
}