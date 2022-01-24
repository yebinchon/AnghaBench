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
struct inode {int dummy; } ;
struct fuse_conn {int /*<<< orphan*/  lock; int /*<<< orphan*/  processing; int /*<<< orphan*/  pending; scalar_t__ connected; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct fuse_conn*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct fuse_conn*) ; 
 struct fuse_conn* FUNC2 (struct file*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

int FUNC5(struct inode *inode, struct file *file)
{
	struct fuse_conn *fc = FUNC2(file);
	if (fc) {
		FUNC3(&fc->lock);
		fc->connected = 0;
		FUNC0(fc, &fc->pending);
		FUNC0(fc, &fc->processing);
		FUNC4(&fc->lock);
		FUNC1(fc);
	}

	return 0;
}