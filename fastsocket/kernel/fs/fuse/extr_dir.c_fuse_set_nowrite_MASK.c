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
struct inode {int /*<<< orphan*/  i_mutex; } ;
struct fuse_inode {scalar_t__ writectr; int /*<<< orphan*/  page_waitq; } ;
struct fuse_conn {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUSE_NOWRITE ; 
 struct fuse_conn* FUNC1 (struct inode*) ; 
 struct fuse_inode* FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 

void FUNC7(struct inode *inode)
{
	struct fuse_conn *fc = FUNC1(inode);
	struct fuse_inode *fi = FUNC2(inode);

	FUNC0(!FUNC3(&inode->i_mutex));

	FUNC4(&fc->lock);
	FUNC0(fi->writectr < 0);
	fi->writectr += FUSE_NOWRITE;
	FUNC5(&fc->lock);
	FUNC6(fi->page_waitq, fi->writectr == FUSE_NOWRITE);
}