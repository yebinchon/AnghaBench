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
 scalar_t__ UFS_MAXNAMLEN ; 
 int /*<<< orphan*/  FUNC3 (struct dentry*,struct inode*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 struct inode* FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC6 (struct inode*,struct dentry*) ; 
 int /*<<< orphan*/  FUNC7 () ; 

__attribute__((used)) static struct dentry *FUNC8(struct inode * dir, struct dentry *dentry, struct nameidata *nd)
{
	struct inode * inode = NULL;
	ino_t ino;
	
	if (dentry->d_name.len > UFS_MAXNAMLEN)
		return FUNC1(-ENAMETOOLONG);

	FUNC4();
	ino = FUNC6(dir, dentry);
	if (ino) {
		inode = FUNC5(dir->i_sb, ino);
		if (FUNC2(inode)) {
			FUNC7();
			return FUNC0(inode);
		}
	}
	FUNC7();
	FUNC3(dentry, inode);
	return NULL;
}