#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct page {int dummy; } ;
struct address_space {int dummy; } ;
typedef  enum migrate_mode { ____Placeholder_migrate_mode } migrate_mode ;

/* Variables and functions */
 int EAGAIN ; 
 int EBUSY ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int MIGRATE_SYNC ; 
 scalar_t__ FUNC0 (struct page*) ; 
 int FUNC1 (struct address_space*,struct page*,struct page*,int) ; 
 scalar_t__ FUNC2 (struct page*) ; 
 int /*<<< orphan*/  FUNC3 (struct page*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct address_space*,struct page*) ; 

__attribute__((used)) static int FUNC5(struct address_space *mapping,
	struct page *newpage, struct page *page, enum migrate_mode mode)
{
	if (FUNC0(page)) {
		/* Only writeback pages in full synchronous migration */
		if (mode != MIGRATE_SYNC)
			return -EBUSY;
		return FUNC4(mapping, page);
	}

	/*
	 * Buffers may be managed in a filesystem specific way.
	 * We must have no buffers or drop them.
	 */
	if (FUNC2(page) &&
	    !FUNC3(page, GFP_KERNEL))
		return -EAGAIN;

	return FUNC1(mapping, newpage, page, mode);
}