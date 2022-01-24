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
struct tty_struct {int index; struct inode* driver_data; struct tty_driver* driver; } ;
struct tty_driver {scalar_t__ type; scalar_t__ subtype; scalar_t__ minor_start; int /*<<< orphan*/  major; } ;
struct super_block {struct dentry* s_root; } ;
struct pts_mount_opts {int mode; int /*<<< orphan*/  gid; scalar_t__ setgid; int /*<<< orphan*/  uid; scalar_t__ setuid; } ;
struct pts_fs_info {struct pts_mount_opts mount_opts; } ;
struct inode {int i_ino; struct tty_struct* i_private; int /*<<< orphan*/  i_ctime; int /*<<< orphan*/  i_atime; int /*<<< orphan*/  i_mtime; int /*<<< orphan*/  i_gid; int /*<<< orphan*/  i_uid; } ;
struct dentry {TYPE_1__* d_inode; } ;
typedef  int /*<<< orphan*/  dev_t ;
struct TYPE_2__ {int /*<<< orphan*/  i_mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  CURRENT_TIME ; 
 struct pts_fs_info* FUNC1 (struct super_block*) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC2 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ PTY_TYPE_SLAVE ; 
 int S_IFCHR ; 
 scalar_t__ TTY_DRIVER_TYPE_PTY ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct dentry*,struct inode*) ; 
 struct dentry* FUNC7 (struct dentry*,char*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,struct dentry*) ; 
 int /*<<< orphan*/  FUNC9 (struct inode*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 struct inode* FUNC12 (struct super_block*) ; 
 struct super_block* FUNC13 (struct inode*) ; 
 int /*<<< orphan*/  FUNC14 (char*,char*,int) ; 

int FUNC15(struct inode *ptmx_inode, struct tty_struct *tty)
{
	/* tty layer puts index from devpts_new_index() in here */
	int number = tty->index;
	struct tty_driver *driver = tty->driver;
	dev_t device = FUNC3(driver->major, driver->minor_start+number);
	struct dentry *dentry;
	struct super_block *sb = FUNC13(ptmx_inode);
	struct inode *inode = FUNC12(sb);
	struct dentry *root = sb->s_root;
	struct pts_fs_info *fsi = FUNC1(sb);
	struct pts_mount_opts *opts = &fsi->mount_opts;
	char s[12];

	/* We're supposed to be given the slave end of a pty */
	FUNC0(driver->type != TTY_DRIVER_TYPE_PTY);
	FUNC0(driver->subtype != PTY_TYPE_SLAVE);

	if (!inode)
		return -ENOMEM;

	inode->i_ino = number + 3;
	inode->i_uid = opts->setuid ? opts->uid : FUNC5();
	inode->i_gid = opts->setgid ? opts->gid : FUNC4();
	inode->i_mtime = inode->i_atime = inode->i_ctime = CURRENT_TIME;
	FUNC9(inode, S_IFCHR|opts->mode, device);
	inode->i_private = tty;
	tty->driver_data = inode;

	FUNC14(s, "%d", number);

	FUNC10(&root->d_inode->i_mutex);

	dentry = FUNC7(root, s);
	if (!FUNC2(dentry)) {
		FUNC6(dentry, inode);
		FUNC8(root->d_inode, dentry);
	}

	FUNC11(&root->d_inode->i_mutex);

	return 0;
}