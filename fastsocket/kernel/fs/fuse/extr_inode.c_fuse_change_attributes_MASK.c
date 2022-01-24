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
typedef  scalar_t__ u64 ;
struct timespec {int /*<<< orphan*/  tv_nsec; int /*<<< orphan*/  tv_sec; } ;
struct inode {int /*<<< orphan*/  i_mapping; int /*<<< orphan*/  i_mode; int /*<<< orphan*/  i_size; struct timespec i_mtime; } ;
struct fuse_inode {scalar_t__ attr_version; } ;
struct fuse_conn {scalar_t__ auto_inval_data; int /*<<< orphan*/  lock; } ;
struct fuse_attr {int /*<<< orphan*/  mtimensec; int /*<<< orphan*/  mtime; int /*<<< orphan*/  size; } ;
typedef  int /*<<< orphan*/  loff_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*,struct fuse_attr*,scalar_t__) ; 
 struct fuse_conn* FUNC2 (struct inode*) ; 
 struct fuse_inode* FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct timespec*,struct timespec*) ; 
 int /*<<< orphan*/  FUNC9 (struct inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC10(struct inode *inode, struct fuse_attr *attr,
			    u64 attr_valid, u64 attr_version)
{
	struct fuse_conn *fc = FUNC2(inode);
	struct fuse_inode *fi = FUNC3(inode);
	loff_t oldsize;
	struct timespec old_mtime;

	FUNC6(&fc->lock);
	if (attr_version != 0 && fi->attr_version > attr_version) {
		FUNC7(&fc->lock);
		return;
	}

	old_mtime = inode->i_mtime;
	FUNC1(inode, attr, attr_valid);

	oldsize = inode->i_size;
	FUNC4(inode, attr->size);
	FUNC7(&fc->lock);

	if (FUNC0(inode->i_mode)) {
		bool inval = false;

		if (oldsize != attr->size) {
			FUNC9(inode, oldsize, attr->size);
			inval = true;
		} else if (fc->auto_inval_data) {
			struct timespec new_mtime = {
				.tv_sec = attr->mtime,
				.tv_nsec = attr->mtimensec,
			};

			/*
			 * Auto inval mode also checks and invalidates if mtime
			 * has changed.
			 */
			if (!FUNC8(&old_mtime, &new_mtime))
				inval = true;
		}

		if (inval)
			FUNC5(inode->i_mapping);
	}
}