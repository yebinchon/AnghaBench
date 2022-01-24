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
struct nfs_inode {struct fscache_cookie* fscache; } ;
struct inode {int dummy; } ;
struct fscache_cookie {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  host; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FSCACHE ; 
 int /*<<< orphan*/  NFSIOS_FSCACHE_PAGES_UNCACHED ; 
 struct nfs_inode* FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,struct fscache_cookie*,struct page*,struct nfs_inode*) ; 
 int /*<<< orphan*/  FUNC4 (struct fscache_cookie*,struct page*) ; 
 int /*<<< orphan*/  FUNC5 (struct fscache_cookie*,struct page*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

void FUNC7(struct page *page, struct inode *inode)
{
	struct nfs_inode *nfsi = FUNC1(inode);
	struct fscache_cookie *cookie = nfsi->fscache;

	FUNC0(!cookie);

	FUNC3(FSCACHE, "NFS: fscache invalidatepage (0x%p/0x%p/0x%p)\n",
		 cookie, page, nfsi);

	FUNC5(cookie, page);

	FUNC0(!FUNC2(page));
	FUNC4(cookie, page);
	FUNC6(page->mapping->host,
			      NFSIOS_FSCACHE_PAGES_UNCACHED, 1);
}