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
struct TYPE_6__ {int (* mkdir ) (struct inode*,struct dentry*,struct iattr*) ;} ;
struct TYPE_4__ {int /*<<< orphan*/  s_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATTR_MODE ; 
 TYPE_3__* FUNC0 (struct inode*) ; 
 int S_IFDIR ; 
 int /*<<< orphan*/  VFS ; 
 int /*<<< orphan*/  FUNC1 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct inode*,struct dentry*,struct iattr*) ; 

__attribute__((used)) static int FUNC4(struct inode *dir, struct dentry *dentry, int mode)
{
	struct iattr attr;
	int error;

	FUNC2(VFS, "NFS: mkdir(%s/%ld), %s\n",
			dir->i_sb->s_id, dir->i_ino, dentry->d_name.name);

	attr.ia_valid = ATTR_MODE;
	attr.ia_mode = mode | S_IFDIR;

	error = FUNC0(dir)->mkdir(dir, dentry, &attr);
	if (error != 0)
		goto out_err;
	return 0;
out_err:
	FUNC1(dentry);
	return error;
}