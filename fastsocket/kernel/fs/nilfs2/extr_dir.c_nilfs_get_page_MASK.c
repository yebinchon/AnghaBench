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
struct page {int dummy; } ;
struct inode {struct address_space* i_mapping; } ;
struct address_space {TYPE_1__* a_ops; } ;
typedef  int /*<<< orphan*/  filler_t ;
struct TYPE_2__ {scalar_t__ readpage; } ;

/* Variables and functions */
 int /*<<< orphan*/  EIO ; 
 struct page* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 scalar_t__ FUNC3 (struct page*) ; 
 int /*<<< orphan*/  FUNC4 (struct page*) ; 
 int /*<<< orphan*/  FUNC5 (struct page*) ; 
 int /*<<< orphan*/  FUNC6 (struct page*) ; 
 int /*<<< orphan*/  FUNC7 (struct page*) ; 
 struct page* FUNC8 (struct address_space*,unsigned long,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct page*) ; 

__attribute__((used)) static struct page *FUNC10(struct inode *dir, unsigned long n)
{
	struct address_space *mapping = dir->i_mapping;
	struct page *page = FUNC8(mapping, n,
				(filler_t *)mapping->a_ops->readpage, NULL);
	if (!FUNC1(page)) {
		FUNC9(page);
		FUNC5(page);
		if (!FUNC4(page))
			goto fail;
		if (!FUNC2(page))
			FUNC6(page);
		if (FUNC3(page))
			goto fail;
	}
	return page;

fail:
	FUNC7(page);
	return FUNC0(-EIO);
}