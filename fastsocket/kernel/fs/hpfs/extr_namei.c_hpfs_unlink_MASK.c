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
struct inode {int /*<<< orphan*/  i_mode; int /*<<< orphan*/  i_sb; } ;
struct iattr {int ia_valid; int /*<<< orphan*/  ia_size; } ;
struct hpfs_dirent {int /*<<< orphan*/  fnode; scalar_t__ directory; scalar_t__ first; } ;
struct TYPE_3__ {char* name; unsigned int len; } ;
struct dentry {int /*<<< orphan*/  d_lock; int /*<<< orphan*/  d_count; struct inode* d_inode; TYPE_1__ d_name; } ;
typedef  int /*<<< orphan*/  fnode_secno ;
typedef  int /*<<< orphan*/  dnode_secno ;
struct TYPE_4__ {int /*<<< orphan*/  i_parent_mutex; int /*<<< orphan*/  i_mutex; int /*<<< orphan*/  i_dno; } ;

/* Variables and functions */
 int ATTR_CTIME ; 
 int ATTR_SIZE ; 
 int EFSERROR ; 
 int EISDIR ; 
 int ENOENT ; 
 int ENOSPC ; 
 int EPERM ; 
 int /*<<< orphan*/  MAY_WRITE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC3 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*) ; 
 int /*<<< orphan*/  FUNC7 (char*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC8 (struct quad_buffer_head*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*) ; 
 TYPE_2__* FUNC10 (struct inode*) ; 
 int FUNC11 (struct inode*,int /*<<< orphan*/ ,struct hpfs_dirent*,struct quad_buffer_head*,int) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 struct hpfs_dirent* FUNC13 (struct inode*,int /*<<< orphan*/ ,char*,unsigned int,int /*<<< orphan*/ *,struct quad_buffer_head*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int FUNC16 (struct dentry*,struct iattr*) ; 
 int /*<<< orphan*/  FUNC17 (struct inode*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 () ; 

__attribute__((used)) static int FUNC21(struct inode *dir, struct dentry *dentry)
{
	const char *name = dentry->d_name.name;
	unsigned len = dentry->d_name.len;
	struct quad_buffer_head qbh;
	struct hpfs_dirent *de;
	struct inode *inode = dentry->d_inode;
	dnode_secno dno;
	fnode_secno fno;
	int r;
	int rep = 0;
	int err;

	FUNC12();
	FUNC7((char *)name, &len);
again:
	FUNC14(&FUNC10(inode)->i_parent_mutex);
	FUNC14(&FUNC10(dir)->i_mutex);
	err = -ENOENT;
	de = FUNC13(dir, FUNC10(dir)->i_dno, (char *)name, len, &dno, &qbh);
	if (!de)
		goto out;

	err = -EPERM;
	if (de->first)
		goto out1;

	err = -EISDIR;
	if (de->directory)
		goto out1;

	fno = de->fnode;
	r = FUNC11(dir, dno, de, &qbh, 1);
	switch (r) {
	case 1:
		FUNC9(dir->i_sb, "there was error when removing dirent");
		err = -EFSERROR;
		break;
	case 2:		/* no space for deleting, try to truncate file */

		err = -ENOSPC;
		if (rep++)
			break;

		FUNC15(&FUNC10(dir)->i_mutex);
		FUNC15(&FUNC10(inode)->i_parent_mutex);
		FUNC2(dentry);
		FUNC18(&dentry->d_lock);
		if (FUNC1(&dentry->d_count) > 1 ||
		    FUNC5(inode, MAY_WRITE, NULL) ||
		    !FUNC0(inode->i_mode) ||
		    FUNC6(inode)) {
			FUNC19(&dentry->d_lock);
			FUNC3(dentry);
		} else {
			struct iattr newattrs;
			FUNC19(&dentry->d_lock);
			/*printk("HPFS: truncating file before delete.\n");*/
			newattrs.ia_size = 0;
			newattrs.ia_valid = ATTR_SIZE | ATTR_CTIME;
			err = FUNC16(dentry, &newattrs);
			FUNC17(inode);
			if (!err)
				goto again;
		}
		FUNC20();
		return -ENOSPC;
	default:
		FUNC4(inode);
		err = 0;
	}
	goto out;

out1:
	FUNC8(&qbh);
out:
	FUNC15(&FUNC10(dir)->i_mutex);
	FUNC15(&FUNC10(inode)->i_parent_mutex);
	FUNC20();
	return err;
}