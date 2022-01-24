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
struct list_head {int dummy; } ;
struct inode {int dummy; } ;
struct file {int dummy; } ;
struct address_space {struct inode* host; } ;

/* Variables and functions */
 int /*<<< orphan*/  P9_DEBUG_VFS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,...) ; 
 int FUNC1 (struct address_space*,struct list_head*,void*,struct file*) ; 
 int FUNC2 (struct inode*,struct address_space*,struct list_head*,unsigned int*) ; 
 scalar_t__ v9fs_vfs_readpage ; 

__attribute__((used)) static int FUNC3(struct file *filp, struct address_space *mapping,
			     struct list_head *pages, unsigned nr_pages)
{
	int ret = 0;
	struct inode *inode;

	inode = mapping->host;
	FUNC0(P9_DEBUG_VFS, "inode: %p file: %p\n", inode, filp);

	ret = FUNC2(inode, mapping, pages, &nr_pages);
	if (ret == 0)
		return ret;

	ret = FUNC1(mapping, pages, (void *)v9fs_vfs_readpage, filp);
	FUNC0(P9_DEBUG_VFS, "  = %d\n", ret);
	return ret;
}