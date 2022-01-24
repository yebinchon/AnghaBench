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
struct page {int /*<<< orphan*/  flags; int /*<<< orphan*/  index; } ;
struct inode {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  fscache; } ;

/* Variables and functions */
 int /*<<< orphan*/  FSCACHE ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  NFSIOS_FSCACHE_PAGES_UNCACHED ; 
 int /*<<< orphan*/  NFSIOS_FSCACHE_PAGES_WRITTEN_FAIL ; 
 int /*<<< orphan*/  NFSIOS_FSCACHE_PAGES_WRITTEN_OK ; 
 TYPE_1__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,struct page*,struct page*,int /*<<< orphan*/ ,int,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct page*) ; 
 int FUNC3 (int /*<<< orphan*/ ,struct page*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*,int /*<<< orphan*/ ,int) ; 

void FUNC5(struct inode *inode, struct page *page, int sync)
{
	int ret;

	FUNC1(FSCACHE,
		 "NFS: readpage_to_fscache(fsc:%p/p:%p(i:%lx f:%lx)/%d)\n",
		 FUNC0(inode)->fscache, page, page->index, page->flags, sync);

	ret = FUNC3(FUNC0(inode)->fscache, page, GFP_KERNEL);
	FUNC1(FSCACHE,
		 "NFS:     readpage_to_fscache: p:%p(i:%lu f:%lx) ret %d\n",
		 page, page->index, page->flags, ret);

	if (ret != 0) {
		FUNC2(FUNC0(inode)->fscache, page);
		FUNC4(inode,
				      NFSIOS_FSCACHE_PAGES_WRITTEN_FAIL, 1);
		FUNC4(inode, NFSIOS_FSCACHE_PAGES_UNCACHED, 1);
	} else {
		FUNC4(inode,
				      NFSIOS_FSCACHE_PAGES_WRITTEN_OK, 1);
	}
}