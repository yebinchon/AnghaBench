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
struct TYPE_2__ {int /*<<< orphan*/  host; } ;

/* Variables and functions */
 int /*<<< orphan*/  PAGECACHE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,struct page*,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (struct page*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct page*) ; 

__attribute__((used)) static void FUNC3(struct page *page, unsigned long offset)
{
	FUNC0(PAGECACHE, "NFS: invalidate_page(%p, %lu)\n", page, offset);

	if (offset != 0)
		return;
	/* Cancel any unstarted writes on this page */
	FUNC2(page->mapping->host, page);

	FUNC1(page, page->mapping->host);
}