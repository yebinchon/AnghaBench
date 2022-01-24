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
struct page {TYPE_1__* mapping; } ;
struct nfs_server {int /*<<< orphan*/  backing_dev_info; int /*<<< orphan*/  writeback; } ;
struct inode {int dummy; } ;
struct TYPE_2__ {struct inode* host; } ;

/* Variables and functions */
 int /*<<< orphan*/  BLK_RW_ASYNC ; 
 scalar_t__ NFS_CONGESTION_ON_THRESH ; 
 struct nfs_server* FUNC0 (struct inode*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct page*) ; 

__attribute__((used)) static int FUNC4(struct page *page)
{
	int ret = FUNC3(page);

	if (!ret) {
		struct inode *inode = page->mapping->host;
		struct nfs_server *nfss = FUNC0(inode);

		if (FUNC1(&nfss->writeback) >
				NFS_CONGESTION_ON_THRESH) {
			FUNC2(&nfss->backing_dev_info,
						BLK_RW_ASYNC);
		}
	}
	return ret;
}