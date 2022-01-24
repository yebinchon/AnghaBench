#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct page {scalar_t__ index; } ;
struct inode {int /*<<< orphan*/  i_mapping; } ;
struct TYPE_10__ {TYPE_3__* file; } ;
typedef  TYPE_4__ nfs_readdir_descriptor_t ;
struct TYPE_8__ {TYPE_1__* dentry; } ;
struct TYPE_9__ {TYPE_2__ f_path; } ;
struct TYPE_7__ {struct inode* d_inode; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,scalar_t__,int) ; 
 int FUNC2 (TYPE_4__*,struct page*,struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct page*) ; 

__attribute__((used)) static
int FUNC5(nfs_readdir_descriptor_t *desc, struct page* page)
{
	struct inode	*inode = desc->file->f_path.dentry->d_inode;
	int ret;

	ret = FUNC2(desc, page, inode);
	if (ret < 0)
		goto error;
	FUNC0(page);

	if (FUNC1(inode->i_mapping, page->index + 1, -1) < 0) {
		/* Should never happen */
		FUNC3(inode, inode->i_mapping);
	}
	FUNC4(page);
	return 0;
 error:
	FUNC4(page);
	return ret;
}