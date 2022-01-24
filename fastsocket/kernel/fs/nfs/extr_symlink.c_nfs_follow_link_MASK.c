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
typedef  void page ;
struct nameidata {int dummy; } ;
struct inode {int /*<<< orphan*/  i_data; int /*<<< orphan*/  i_mapping; } ;
struct dentry {struct inode* d_inode; } ;
typedef  int /*<<< orphan*/  filler_t ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (void*) ; 
 void* FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (struct nameidata*,void*) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*,int /*<<< orphan*/ ) ; 
 scalar_t__ nfs_symlink_filler ; 
 void* FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct inode*) ; 

__attribute__((used)) static void *FUNC6(struct dentry *dentry, struct nameidata *nd)
{
	struct inode *inode = dentry->d_inode;
	struct page *page;
	void *err;

	err = FUNC0(FUNC4(inode, inode->i_mapping));
	if (err)
		goto read_failed;
	page = FUNC5(&inode->i_data, 0,
				(filler_t *)nfs_symlink_filler, inode);
	if (FUNC1(page)) {
		err = page;
		goto read_failed;
	}
	FUNC3(nd, FUNC2(page));
	return page;

read_failed:
	FUNC3(nd, err);
	return NULL;
}