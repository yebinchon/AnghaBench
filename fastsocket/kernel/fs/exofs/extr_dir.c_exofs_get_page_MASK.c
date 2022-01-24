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
struct inode {struct address_space* i_mapping; } ;
struct address_space {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EIO ; 
 struct page* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 scalar_t__ FUNC3 (struct page*) ; 
 int /*<<< orphan*/  FUNC4 (struct page*) ; 
 int /*<<< orphan*/  FUNC5 (struct page*) ; 
 int /*<<< orphan*/  FUNC6 (struct page*) ; 
 struct page* FUNC7 (struct address_space*,unsigned long,int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct page *FUNC8(struct inode *dir, unsigned long n)
{
	struct address_space *mapping = dir->i_mapping;
	struct page *page = FUNC7(mapping, n, NULL);

	if (!FUNC1(page)) {
		FUNC6(page);
		if (!FUNC2(page))
			FUNC4(page);
		if (FUNC3(page))
			goto fail;
	}
	return page;

fail:
	FUNC5(page);
	return FUNC0(-EIO);
}