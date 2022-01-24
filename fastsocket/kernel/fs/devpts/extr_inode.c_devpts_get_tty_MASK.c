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
struct tty_struct {int dummy; } ;
struct inode {scalar_t__ i_rdev; scalar_t__ i_private; TYPE_1__* i_sb; } ;
struct dentry {int dummy; } ;
struct TYPE_2__ {scalar_t__ s_magic; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ DEVPTS_SUPER_MAGIC ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PTMX_MINOR ; 
 int /*<<< orphan*/  TTYAUX_MAJOR ; 
 struct dentry* FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (struct dentry*) ; 

struct tty_struct *FUNC4(struct inode *pts_inode, int number)
{
	struct dentry *dentry;
	struct tty_struct *tty;

	FUNC0(pts_inode->i_rdev == FUNC1(TTYAUX_MAJOR, PTMX_MINOR));

	/* Ensure dentry has not been deleted by devpts_pty_kill() */
	dentry = FUNC2(pts_inode);
	if (!dentry)
		return NULL;

	tty = NULL;
	if (pts_inode->i_sb->s_magic == DEVPTS_SUPER_MAGIC)
		tty = (struct tty_struct *)pts_inode->i_private;

	FUNC3(dentry);

	return tty;
}