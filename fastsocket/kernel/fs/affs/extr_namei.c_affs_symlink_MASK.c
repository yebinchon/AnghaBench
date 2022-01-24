#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct super_block {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/ * a_ops; } ;
struct inode {int i_mode; scalar_t__ i_nlink; int /*<<< orphan*/  i_ino; TYPE_2__ i_data; int /*<<< orphan*/ * i_op; struct super_block* i_sb; } ;
struct TYPE_5__ {int /*<<< orphan*/  name; scalar_t__ len; } ;
struct dentry {TYPE_1__ d_name; } ;
struct buffer_head {int dummy; } ;
struct TYPE_8__ {scalar_t__ table; } ;
struct TYPE_7__ {int s_hashsize; char* s_volume; } ;

/* Variables and functions */
 TYPE_4__* FUNC0 (struct buffer_head*) ; 
 TYPE_3__* FUNC1 (struct super_block*) ; 
 int EIO ; 
 int ENOSPC ; 
 int /*<<< orphan*/  ST_SOFTLINK ; 
 int S_IFLNK ; 
 int FUNC2 (struct inode*,struct inode*,struct dentry*,int /*<<< orphan*/ ) ; 
 struct buffer_head* FUNC3 (struct super_block*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct buffer_head*) ; 
 struct inode* FUNC5 (struct inode*) ; 
 int /*<<< orphan*/  affs_symlink_aops ; 
 int /*<<< orphan*/  affs_symlink_inode_operations ; 
 int /*<<< orphan*/  FUNC6 (struct inode*) ; 
 int /*<<< orphan*/  FUNC7 (struct buffer_head*,struct inode*) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*) ; 
 int /*<<< orphan*/  FUNC9 (struct inode*) ; 
 int /*<<< orphan*/  FUNC10 (char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,char const*) ; 

int
FUNC11(struct inode *dir, struct dentry *dentry, const char *symname)
{
	struct super_block	*sb = dir->i_sb;
	struct buffer_head	*bh;
	struct inode		*inode;
	char			*p;
	int			 i, maxlen, error;
	char			 c, lc;

	FUNC10("AFFS: symlink(%lu,\"%.*s\" -> \"%s\")\n",dir->i_ino,
		 (int)dentry->d_name.len,dentry->d_name.name,symname);

	maxlen = FUNC1(sb)->s_hashsize * sizeof(u32) - 1;
	inode  = FUNC5(dir);
	if (!inode)
		return -ENOSPC;

	inode->i_op = &affs_symlink_inode_operations;
	inode->i_data.a_ops = &affs_symlink_aops;
	inode->i_mode = S_IFLNK | 0777;
	FUNC9(inode);

	error = -EIO;
	bh = FUNC3(sb, inode->i_ino);
	if (!bh)
		goto err;
	i  = 0;
	p  = (char *)FUNC0(bh)->table;
	lc = '/';
	if (*symname == '/') {
		while (*symname == '/')
			symname++;
		while (FUNC1(sb)->s_volume[i])	/* Cannot overflow */
			*p++ = FUNC1(sb)->s_volume[i++];
	}
	while (i < maxlen && (c = *symname++)) {
		if (c == '.' && lc == '/' && *symname == '.' && symname[1] == '/') {
			*p++ = '/';
			i++;
			symname += 2;
			lc = '/';
		} else if (c == '.' && lc == '/' && *symname == '/') {
			symname++;
			lc = '/';
		} else {
			*p++ = c;
			lc   = c;
			i++;
		}
		if (lc == '/')
			while (*symname == '/')
				symname++;
	}
	*p = 0;
	FUNC7(bh, inode);
	FUNC4(bh);
	FUNC8(inode);

	error = FUNC2(dir, inode, dentry, ST_SOFTLINK);
	if (error)
		goto err;

	return 0;

err:
	inode->i_nlink = 0;
	FUNC8(inode);
	FUNC6(inode);
	return error;
}