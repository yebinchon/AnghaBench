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
struct list_head {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 int FUNC3 (struct page*,struct list_head*) ; 
 scalar_t__ FUNC4 (struct page*) ; 
 int /*<<< orphan*/  FUNC5 (struct page*) ; 
 scalar_t__ FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (struct page*) ; 

__attribute__((used)) static int FUNC8(struct page *page, struct list_head *out)
{
	if (!page || FUNC0(page))
		/* For split b-tree node pages, this function may be called
		   twice.  We ignore the 2nd or later calls by this check. */
		return 0;

	FUNC2(page);
	FUNC1(page);
	FUNC5(page);
	FUNC7(page);

	if (FUNC4(page)) {
		int err = FUNC3(page, out);
		if (FUNC6(err))
			return err;
	}
	return 0;
}