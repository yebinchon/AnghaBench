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
struct quad_buffer_head {int dummy; } ;
struct inode {int /*<<< orphan*/  i_sb; } ;
struct hpfs_dirent {int /*<<< orphan*/  fnode; int /*<<< orphan*/  directory; scalar_t__ first; } ;
struct TYPE_3__ {char* name; unsigned int len; } ;
struct dentry {struct inode* d_inode; TYPE_1__ d_name; } ;
typedef  int /*<<< orphan*/  fnode_secno ;
typedef  int /*<<< orphan*/  dnode_secno ;
struct TYPE_4__ {int /*<<< orphan*/  i_parent_mutex; int /*<<< orphan*/  i_mutex; int /*<<< orphan*/  i_dno; } ;

/* Variables and functions */
 int EFSERROR ; 
 int ENOENT ; 
 int ENOSPC ; 
 int ENOTDIR ; 
 int ENOTEMPTY ; 
 int EPERM ; 
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (char*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC3 (struct quad_buffer_head*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 TYPE_2__* FUNC6 (struct inode*) ; 
 int FUNC7 (struct inode*,int /*<<< orphan*/ ,struct hpfs_dirent*,struct quad_buffer_head*,int) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 struct hpfs_dirent* FUNC9 (struct inode*,int /*<<< orphan*/ ,char*,unsigned int,int /*<<< orphan*/ *,struct quad_buffer_head*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 () ; 

__attribute__((used)) static int FUNC13(struct inode *dir, struct dentry *dentry)
{
	const char *name = dentry->d_name.name;
	unsigned len = dentry->d_name.len;
	struct quad_buffer_head qbh;
	struct hpfs_dirent *de;
	struct inode *inode = dentry->d_inode;
	dnode_secno dno;
	fnode_secno fno;
	int n_items = 0;
	int err;
	int r;

	FUNC2((char *)name, &len);
	FUNC8();
	FUNC10(&FUNC6(inode)->i_parent_mutex);
	FUNC10(&FUNC6(dir)->i_mutex);
	err = -ENOENT;
	de = FUNC9(dir, FUNC6(dir)->i_dno, (char *)name, len, &dno, &qbh);
	if (!de)
		goto out;

	err = -EPERM;
	if (de->first)
		goto out1;

	err = -ENOTDIR;
	if (!de->directory)
		goto out1;

	FUNC4(dir->i_sb, FUNC6(inode)->i_dno, NULL, NULL, &n_items);
	err = -ENOTEMPTY;
	if (n_items)
		goto out1;

	fno = de->fnode;
	r = FUNC7(dir, dno, de, &qbh, 1);
	switch (r) {
	case 1:
		FUNC5(dir->i_sb, "there was error when removing dirent");
		err = -EFSERROR;
		break;
	case 2:
		err = -ENOSPC;
		break;
	default:
		FUNC1(dir);
		FUNC0(inode);
		err = 0;
	}
	goto out;
out1:
	FUNC3(&qbh);
out:
	FUNC11(&FUNC6(dir)->i_mutex);
	FUNC11(&FUNC6(inode)->i_parent_mutex);
	FUNC12();
	return err;
}