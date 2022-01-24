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
struct inode {TYPE_1__* i_mapping; } ;
struct fuse_req {int /*<<< orphan*/ * pages; int /*<<< orphan*/  writepages_entry; struct inode* inode; } ;
struct fuse_inode {int /*<<< orphan*/  page_waitq; } ;
struct fuse_conn {int dummy; } ;
struct backing_dev_info {int dummy; } ;
struct TYPE_2__ {struct backing_dev_info* backing_dev_info; } ;

/* Variables and functions */
 int /*<<< orphan*/  BDI_WRITEBACK ; 
 int /*<<< orphan*/  NR_WRITEBACK_TEMP ; 
 int /*<<< orphan*/  FUNC0 (struct backing_dev_info*) ; 
 int /*<<< orphan*/  FUNC1 (struct backing_dev_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct fuse_inode* FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct fuse_conn *fc, struct fuse_req *req)
{
	struct inode *inode = req->inode;
	struct fuse_inode *fi = FUNC3(inode);
	struct backing_dev_info *bdi = inode->i_mapping->backing_dev_info;

	FUNC4(&req->writepages_entry);
	FUNC1(bdi, BDI_WRITEBACK);
	FUNC2(req->pages[0], NR_WRITEBACK_TEMP);
	FUNC0(bdi);
	FUNC5(&fi->page_waitq);
}