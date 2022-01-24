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
struct page {struct address_space* mapping; } ;
struct inode {int dummy; } ;
struct address_space {int /*<<< orphan*/  tree_lock; int /*<<< orphan*/  a_ops; struct inode* host; } ;
struct TYPE_2__ {void (* freepage ) (struct page*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC2 (struct inode*) ; 
 scalar_t__ FUNC3 (struct page*) ; 
 int /*<<< orphan*/  FUNC4 (struct page*) ; 
 int /*<<< orphan*/  FUNC5 (struct page*) ; 
 int /*<<< orphan*/  FUNC6 (struct page*) ; 
 int /*<<< orphan*/  FUNC7 (struct page*) ; 
 scalar_t__ FUNC8 (struct page*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct page*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC12(struct address_space *mapping, struct page *page)
{
	struct inode *inode = mapping->host;
	void (*freepage)(struct page *);

	if (page->mapping != mapping)
		return 0;

	if (FUNC8(page) && !FUNC11(page, GFP_KERNEL))
		return 0;

	FUNC9(&mapping->tree_lock);
	if (FUNC3(page))
		goto failed;

	FUNC5(page);
	FUNC0(FUNC8(page));
	FUNC4(page);
	FUNC10(&mapping->tree_lock);
	FUNC6(page);

	if (FUNC2(inode)) {
		freepage = FUNC1(mapping->a_ops)->freepage;
		if (freepage != NULL)
			freepage(page);
	}

	FUNC7(page);	/* pagecache ref */
	return 1;
failed:
	FUNC10(&mapping->tree_lock);
	return 0;
}