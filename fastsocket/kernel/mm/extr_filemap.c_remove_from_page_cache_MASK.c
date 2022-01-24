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
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (struct page*) ; 
 int /*<<< orphan*/  FUNC4 (struct page*) ; 
 int /*<<< orphan*/  FUNC5 (struct page*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

void FUNC8(struct page *page)
{
	struct address_space *mapping = page->mapping;
	void (*freepage)(struct page *) = NULL;
	struct inode *inode = mapping->host;

	FUNC0(!FUNC3(page));

	if (FUNC2(inode))
		freepage = FUNC1(mapping->a_ops)->freepage;

	FUNC6(&mapping->tree_lock);
	FUNC4(page);
	FUNC7(&mapping->tree_lock);
	FUNC5(page);

	if (freepage)
		freepage(page);
}