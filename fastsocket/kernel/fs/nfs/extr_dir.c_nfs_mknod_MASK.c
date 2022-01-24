#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct inode {int /*<<< orphan*/  i_ino; TYPE_1__* i_sb; } ;
struct iattr {int ia_mode; int /*<<< orphan*/  ia_valid; } ;
struct TYPE_5__ {int /*<<< orphan*/  name; } ;
struct dentry {TYPE_2__ d_name; } ;
typedef  int /*<<< orphan*/  dev_t ;
struct TYPE_6__ {int (* mknod ) (struct inode*,struct dentry*,struct iattr*,int /*<<< orphan*/ ) ;} ;
struct TYPE_4__ {int /*<<< orphan*/  s_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATTR_MODE ; 
 int EINVAL ; 
 TYPE_3__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  VFS ; 
 int /*<<< orphan*/  FUNC1 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct inode*,struct dentry*,struct iattr*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(struct inode *dir, struct dentry *dentry, int mode, dev_t rdev)
{
	struct iattr attr;
	int status;

	FUNC2(VFS, "NFS: mknod(%s/%ld), %s\n",
			dir->i_sb->s_id, dir->i_ino, dentry->d_name.name);

	if (!FUNC3(rdev))
		return -EINVAL;

	attr.ia_mode = mode;
	attr.ia_valid = ATTR_MODE;

	status = FUNC0(dir)->mknod(dir, dentry, &attr, rdev);
	if (status != 0)
		goto out_err;
	return 0;
out_err:
	FUNC1(dentry);
	return status;
}