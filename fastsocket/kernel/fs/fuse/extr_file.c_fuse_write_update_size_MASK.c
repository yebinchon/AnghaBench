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
struct inode {scalar_t__ i_size; } ;
struct fuse_inode {scalar_t__ attr_version; } ;
struct fuse_conn {int /*<<< orphan*/  lock; scalar_t__ attr_version; } ;
typedef  scalar_t__ loff_t ;

/* Variables and functions */
 struct fuse_conn* FUNC0 (struct inode*) ; 
 struct fuse_inode* FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct inode *inode, loff_t pos)
{
	struct fuse_conn *fc = FUNC0(inode);
	struct fuse_inode *fi = FUNC1(inode);

	FUNC3(&fc->lock);
	fi->attr_version = ++fc->attr_version;
	if (pos > inode->i_size)
		FUNC2(inode, pos);
	FUNC4(&fc->lock);
}