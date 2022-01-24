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
struct nfs_inode {int dummy; } ;
struct inode {int /*<<< orphan*/  i_ino; } ;
struct TYPE_2__ {struct inode* host; } ;

/* Variables and functions */
 struct nfs_inode* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  PAGECACHE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,long long) ; 
 int /*<<< orphan*/  FUNC2 (struct nfs_inode*,struct page*) ; 
 int FUNC3 (struct inode*,struct page*) ; 
 scalar_t__ FUNC4 (struct page*) ; 

__attribute__((used)) static int FUNC5(struct page *page)
{
	struct inode *inode = page->mapping->host;
	struct nfs_inode *nfsi = FUNC0(inode);

	FUNC1(PAGECACHE, "NFS: launder_page(%ld, %llu)\n",
		inode->i_ino, (long long)FUNC4(page));

	FUNC2(nfsi, page);
	return FUNC3(inode, page);
}