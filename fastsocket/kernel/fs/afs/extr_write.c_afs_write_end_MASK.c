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
struct page {int /*<<< orphan*/  index; } ;
struct file {TYPE_1__* f_dentry; } ;
struct TYPE_4__ {int /*<<< orphan*/  vnode; int /*<<< orphan*/  vid; } ;
struct afs_vnode {int /*<<< orphan*/  writeback_lock; int /*<<< orphan*/  vfs_inode; TYPE_2__ fid; } ;
struct address_space {int dummy; } ;
typedef  unsigned int loff_t ;
struct TYPE_3__ {int /*<<< orphan*/  d_inode; } ;

/* Variables and functions */
 struct afs_vnode* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (struct page*) ; 
 int /*<<< orphan*/  FUNC7 (struct page*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct page*) ; 

int FUNC11(struct file *file, struct address_space *mapping,
		  loff_t pos, unsigned len, unsigned copied,
		  struct page *page, void *fsdata)
{
	struct afs_vnode *vnode = FUNC0(file->f_dentry->d_inode);
	loff_t i_size, maybe_i_size;

	FUNC3("{%x:%u},{%lx}",
	       vnode->fid.vid, vnode->fid.vnode, page->index);

	maybe_i_size = pos + copied;

	i_size = FUNC4(&vnode->vfs_inode);
	if (maybe_i_size > i_size) {
		FUNC8(&vnode->writeback_lock);
		i_size = FUNC4(&vnode->vfs_inode);
		if (maybe_i_size > i_size)
			FUNC5(&vnode->vfs_inode, maybe_i_size);
		FUNC9(&vnode->writeback_lock);
	}

	FUNC7(page);
	if (FUNC1(page))
		FUNC2("dirtied");
	FUNC10(page);
	FUNC6(page);

	return copied;
}