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

/* Variables and functions */
 int /*<<< orphan*/  EIO ; 
 struct page* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 int /*<<< orphan*/  FUNC3 (struct page*) ; 
 int /*<<< orphan*/  FUNC4 (struct page*) ; 
 struct page* FUNC5 (struct address_space*,unsigned long,int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline struct page *FUNC6(struct address_space *mapping,
		unsigned long index)
{
	struct page *page = FUNC5(mapping, index, NULL);

	if (!FUNC1(page)) {
		FUNC3(page);
		if (!FUNC2(page))
			return page;
		FUNC4(page);
		return FUNC0(-EIO);
	}
	return page;
}