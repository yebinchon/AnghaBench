#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct pagevec {int nr; TYPE_4__** pages; } ;
struct TYPE_7__ {int /*<<< orphan*/  i_mapping; } ;
struct TYPE_6__ {int /*<<< orphan*/  data_version; } ;
struct TYPE_5__ {int /*<<< orphan*/  unique; int /*<<< orphan*/  vnode; } ;
struct afs_vnode {TYPE_3__ vfs_inode; TYPE_2__ status; TYPE_1__ fid; } ;
typedef  scalar_t__ pgoff_t ;
struct TYPE_8__ {scalar_t__ index; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_4__*) ; 
 scalar_t__ PAGEVEC_SIZE ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 (struct pagevec*) ; 
 int /*<<< orphan*/  FUNC5 (struct pagevec*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct pagevec*,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct pagevec*) ; 

__attribute__((used)) static void FUNC8(void *cookie_netfs_data)
{
	struct afs_vnode *vnode = cookie_netfs_data;
	struct pagevec pvec;
	pgoff_t first;
	int loop, nr_pages;

	FUNC1("{%x,%x,%Lx}",
	       vnode->fid.vnode, vnode->fid.unique, vnode->status.data_version);

	FUNC5(&pvec, 0);
	first = 0;

	for (;;) {
		/* grab a bunch of pages to clean */
		nr_pages = FUNC6(&pvec, vnode->vfs_inode.i_mapping,
					  first,
					  PAGEVEC_SIZE - FUNC4(&pvec));
		if (!nr_pages)
			break;

		for (loop = 0; loop < nr_pages; loop++)
			FUNC0(pvec.pages[loop]);

		first = pvec.pages[nr_pages - 1]->index + 1;

		pvec.nr = nr_pages;
		FUNC7(&pvec);
		FUNC3();
	}

	FUNC2("");
}