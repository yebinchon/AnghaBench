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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (struct page*,struct page*) ; 
 int FUNC3 (struct address_space*,struct page*,struct page*,int /*<<< orphan*/ *,int) ; 

int FUNC4(struct address_space *mapping,
		struct page *newpage, struct page *page, enum migrate_mode mode)
{
	int rc;

	FUNC0(FUNC1(page));	/* Writeback must be complete */

	rc = FUNC3(mapping, newpage, page, NULL, mode);

	if (rc)
		return rc;

	FUNC2(newpage, page);
	return 0;
}