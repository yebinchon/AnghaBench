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
struct TYPE_3__ {int /*<<< orphan*/  i_mapping; } ;
struct v9fs_cookie {TYPE_1__ inode; } ;
struct pagevec {int nr; TYPE_2__** pages; } ;
typedef  scalar_t__ pgoff_t ;
struct TYPE_4__ {scalar_t__ index; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 scalar_t__ PAGEVEC_SIZE ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (struct pagevec*) ; 
 int /*<<< orphan*/  FUNC3 (struct pagevec*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct pagevec*,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct pagevec*) ; 

__attribute__((used)) static void FUNC6(void *cookie_netfs_data)
{
	struct v9fs_cookie *vcookie = cookie_netfs_data;
	struct pagevec pvec;
	pgoff_t first;
	int loop, nr_pages;

	FUNC3(&pvec, 0);
	first = 0;

	for (;;) {
		nr_pages = FUNC4(&pvec, vcookie->inode.i_mapping,
					  first,
					  PAGEVEC_SIZE - FUNC2(&pvec));
		if (!nr_pages)
			break;

		for (loop = 0; loop < nr_pages; loop++)
			FUNC0(pvec.pages[loop]);

		first = pvec.pages[nr_pages - 1]->index + 1;

		pvec.nr = nr_pages;
		FUNC5(&pvec);
		FUNC1();
	}
}