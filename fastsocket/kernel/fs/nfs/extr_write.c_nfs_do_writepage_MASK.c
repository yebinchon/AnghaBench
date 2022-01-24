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
struct writeback_control {scalar_t__ sync_mode; scalar_t__ nonblocking; } ;
struct page {int /*<<< orphan*/  index; TYPE_1__* mapping; } ;
struct nfs_pageio_descriptor {int dummy; } ;
struct inode {int dummy; } ;
struct TYPE_2__ {struct inode* host; } ;

/* Variables and functions */
 int EAGAIN ; 
 int /*<<< orphan*/  NFSIOS_VFSWRITEPAGE ; 
 int /*<<< orphan*/  NFSIOS_WRITEPAGES ; 
 scalar_t__ WB_SYNC_NONE ; 
 int /*<<< orphan*/  FUNC0 (struct inode*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct nfs_pageio_descriptor*,struct page*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct nfs_pageio_descriptor*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct writeback_control*,struct page*) ; 

__attribute__((used)) static int FUNC5(struct page *page, struct writeback_control *wbc, struct nfs_pageio_descriptor *pgio)
{
	struct inode *inode = page->mapping->host;
	int ret;

	FUNC1(inode, NFSIOS_VFSWRITEPAGE);
	FUNC0(inode, NFSIOS_WRITEPAGES, 1);

	FUNC3(pgio, page->index);
	ret = FUNC2(pgio, page,
			wbc->sync_mode == WB_SYNC_NONE ||
			wbc->nonblocking != 0);
	if (ret == -EAGAIN) {
		FUNC4(wbc, page);
		ret = 0;
	}
	return ret;
}