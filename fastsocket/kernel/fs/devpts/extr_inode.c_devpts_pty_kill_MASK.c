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
struct tty_struct {struct inode* driver_data; } ;
struct super_block {struct dentry* s_root; } ;
struct inode {scalar_t__ i_rdev; int /*<<< orphan*/  i_nlink; } ;
struct dentry {TYPE_1__* d_inode; } ;
struct TYPE_2__ {int /*<<< orphan*/  i_mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct dentry*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PTMX_MINOR ; 
 int /*<<< orphan*/  TTYAUX_MAJOR ; 
 int /*<<< orphan*/  FUNC3 (struct dentry*) ; 
 struct dentry* FUNC4 (struct inode*) ; 
 int /*<<< orphan*/  FUNC5 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 struct super_block* FUNC8 (struct inode*) ; 

void FUNC9(struct tty_struct *tty)
{
	struct inode *inode = tty->driver_data;
	struct super_block *sb = FUNC8(inode);
	struct dentry *root = sb->s_root;
	struct dentry *dentry;

	FUNC0(inode->i_rdev == FUNC2(TTYAUX_MAJOR, PTMX_MINOR));

	FUNC6(&root->d_inode->i_mutex);

	dentry = FUNC4(inode);
	if (FUNC1(dentry))
		goto out;

	if (dentry) {
		inode->i_nlink--;
		FUNC3(dentry);
		FUNC5(dentry);	/* d_alloc_name() in devpts_pty_new() */
	}

	FUNC5(dentry);		/* d_find_alias above */
out:
	FUNC7(&root->d_inode->i_mutex);
}