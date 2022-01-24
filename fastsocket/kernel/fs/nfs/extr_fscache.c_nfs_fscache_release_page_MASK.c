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
struct fscache_cookie {int dummy; } ;
typedef  int /*<<< orphan*/  gfp_t ;
struct TYPE_2__ {int /*<<< orphan*/  host; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FSCACHE ; 
 int /*<<< orphan*/  NFSIOS_FSCACHE_PAGES_UNCACHED ; 
 struct nfs_inode* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct page*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,struct fscache_cookie*,struct page*,struct nfs_inode*) ; 
 int /*<<< orphan*/  FUNC4 (struct fscache_cookie*,struct page*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

int FUNC6(struct page *page, gfp_t gfp)
{
	if (FUNC2(page)) {
		struct nfs_inode *nfsi = FUNC1(page->mapping->host);
		struct fscache_cookie *cookie = nfsi->fscache;

		FUNC0(!cookie);
		FUNC3(FSCACHE, "NFS: fscache releasepage (0x%p/0x%p/0x%p)\n",
			 cookie, page, nfsi);

		if (!FUNC4(cookie, page, gfp))
			return 0;

		FUNC5(page->mapping->host,
				      NFSIOS_FSCACHE_PAGES_UNCACHED, 1);
	}

	return 1;
}