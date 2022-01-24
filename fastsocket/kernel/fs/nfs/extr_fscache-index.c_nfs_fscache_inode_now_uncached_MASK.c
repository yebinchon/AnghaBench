#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct pagevec {int nr; TYPE_2__** pages; } ;
struct TYPE_3__ {int /*<<< orphan*/  i_mapping; } ;
struct nfs_inode {TYPE_1__ vfs_inode; } ;
typedef  scalar_t__ pgoff_t ;
struct TYPE_4__ {scalar_t__ index; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 scalar_t__ PAGEVEC_SIZE ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*,struct nfs_inode*) ; 
 scalar_t__ FUNC3 (struct pagevec*) ; 
 int /*<<< orphan*/  FUNC4 (struct pagevec*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct pagevec*,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct pagevec*) ; 

__attribute__((used)) static void FUNC7(void *cookie_netfs_data)
{
	struct nfs_inode *nfsi = cookie_netfs_data;
	struct pagevec pvec;
	pgoff_t first;
	int loop, nr_pages;

	FUNC4(&pvec, 0);
	first = 0;

	FUNC2("NFS: nfs_inode_now_uncached: nfs_inode 0x%p\n", nfsi);

	for (;;) {
		/* grab a bunch of pages to unmark */
		nr_pages = FUNC5(&pvec,
					  nfsi->vfs_inode.i_mapping,
					  first,
					  PAGEVEC_SIZE - FUNC3(&pvec));
		if (!nr_pages)
			break;

		for (loop = 0; loop < nr_pages; loop++)
			FUNC0(pvec.pages[loop]);

		first = pvec.pages[nr_pages - 1]->index + 1;

		pvec.nr = nr_pages;
		FUNC6(&pvec);
		FUNC1();
	}
}