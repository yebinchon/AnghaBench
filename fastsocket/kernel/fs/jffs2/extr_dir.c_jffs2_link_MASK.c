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
typedef  int uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct jffs2_sb_info {int dummy; } ;
struct jffs2_inode_info {int /*<<< orphan*/  sem; TYPE_2__* inocache; } ;
struct inode {int i_mode; int /*<<< orphan*/  i_count; int /*<<< orphan*/  i_ctime; int /*<<< orphan*/  i_mtime; scalar_t__ i_nlink; int /*<<< orphan*/  i_sb; } ;
struct TYPE_3__ {int /*<<< orphan*/  len; int /*<<< orphan*/  name; } ;
struct dentry {struct inode* d_inode; TYPE_1__ d_name; } ;
struct TYPE_4__ {scalar_t__ pino_nlink; int /*<<< orphan*/  ino; } ;

/* Variables and functions */
 int DT_REG ; 
 int EIO ; 
 int EPERM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct jffs2_inode_info* FUNC1 (struct inode*) ; 
 struct jffs2_sb_info* FUNC2 (int /*<<< orphan*/ ) ; 
 int S_IFMT ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct dentry*,struct inode*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int FUNC7 (struct jffs2_sb_info*,struct jffs2_inode_info*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10 (struct dentry *old_dentry, struct inode *dir_i, struct dentry *dentry)
{
	struct jffs2_sb_info *c = FUNC2(old_dentry->d_inode->i_sb);
	struct jffs2_inode_info *f = FUNC1(old_dentry->d_inode);
	struct jffs2_inode_info *dir_f = FUNC1(dir_i);
	int ret;
	uint8_t type;
	uint32_t now;

	/* Don't let people make hard links to bad inodes. */
	if (!f->inocache)
		return -EIO;

	if (FUNC3(old_dentry->d_inode->i_mode))
		return -EPERM;

	/* XXX: This is ugly */
	type = (old_dentry->d_inode->i_mode & S_IFMT) >> 12;
	if (!type) type = DT_REG;

	now = FUNC6();
	ret = FUNC7(c, dir_f, f->inocache->ino, type, dentry->d_name.name, dentry->d_name.len, now);

	if (!ret) {
		FUNC8(&f->sem);
		old_dentry->d_inode->i_nlink = ++f->inocache->pino_nlink;
		FUNC9(&f->sem);
		FUNC5(dentry, old_dentry->d_inode);
		dir_i->i_mtime = dir_i->i_ctime = FUNC0(now);
		FUNC4(&old_dentry->d_inode->i_count);
	}
	return ret;
}