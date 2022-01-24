#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct kstat {int /*<<< orphan*/  ino; int /*<<< orphan*/  mode; } ;
struct inode {int dummy; } ;
struct fuse_inode {scalar_t__ i_time; int /*<<< orphan*/  orig_ino; int /*<<< orphan*/  orig_i_mode; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct inode*,struct kstat*,struct file*) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*,struct kstat*) ; 
 struct fuse_inode* FUNC2 (struct inode*) ; 
 scalar_t__ FUNC3 () ; 

int FUNC4(struct inode *inode, struct kstat *stat,
			   struct file *file, bool *refreshed)
{
	struct fuse_inode *fi = FUNC2(inode);
	int err;
	bool r;

	if (fi->i_time < FUNC3()) {
		r = true;
		err = FUNC0(inode, stat, file);
	} else {
		r = false;
		err = 0;
		if (stat) {
			FUNC1(inode, stat);
			stat->mode = fi->orig_i_mode;
			stat->ino = fi->orig_ino;
		}
	}

	if (refreshed != NULL)
		*refreshed = r;

	return err;
}