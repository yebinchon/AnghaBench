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
struct nameidata {int dummy; } ;
struct inode {int /*<<< orphan*/  i_sb; } ;
struct TYPE_2__ {scalar_t__ len; } ;
struct dentry {TYPE_1__ d_name; } ;
typedef  scalar_t__ ino_t ;

/* Variables and functions */
 int /*<<< orphan*/  ENAMETOOLONG ; 
 struct dentry* FUNC0 (struct inode*) ; 
 struct dentry* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct inode*) ; 
 scalar_t__ VXFS_NAMELEN ; 
 int /*<<< orphan*/  FUNC3 (struct dentry*,struct inode*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 struct inode* FUNC6 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC7 (struct inode*,struct dentry*) ; 

__attribute__((used)) static struct dentry *
FUNC8(struct inode *dip, struct dentry *dp, struct nameidata *nd)
{
	struct inode		*ip = NULL;
	ino_t			ino;
			 
	if (dp->d_name.len > VXFS_NAMELEN)
		return FUNC1(-ENAMETOOLONG);
				 
	FUNC4();
	ino = FUNC7(dip, dp);
	if (ino) {
		ip = FUNC6(dip->i_sb, ino);
		if (FUNC2(ip)) {
			FUNC5();
			return FUNC0(ip);
		}
	}
	FUNC5();
	FUNC3(dp, ip);
	return NULL;
}