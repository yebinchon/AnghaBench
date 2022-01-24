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
typedef  scalar_t__ u64 ;
struct page {scalar_t__ private; TYPE_1__* mapping; scalar_t__ index; } ;
struct extent_io_tree {int dummy; } ;
struct extent_buffer {struct page** pages; } ;
struct btrfs_root {int dummy; } ;
struct TYPE_4__ {struct extent_io_tree io_tree; } ;
struct TYPE_3__ {int /*<<< orphan*/  host; } ;

/* Variables and functions */
 TYPE_2__* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ PAGE_CACHE_SHIFT ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (struct extent_buffer*) ; 
 int /*<<< orphan*/  FUNC4 (struct btrfs_root*,struct extent_buffer*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct btrfs_root *root, struct page *page)
{
	struct extent_io_tree *tree;
	u64 start = (u64)page->index << PAGE_CACHE_SHIFT;
	u64 found_start;
	struct extent_buffer *eb;

	tree = &FUNC0(page->mapping->host)->io_tree;

	eb = (struct extent_buffer *)page->private;
	if (page != eb->pages[0])
		return 0;
	found_start = FUNC3(eb);
	if (found_start != start) {
		FUNC2(1);
		return 0;
	}
	if (eb->pages[0] != page) {
		FUNC2(1);
		return 0;
	}
	if (!FUNC1(page)) {
		FUNC2(1);
		return 0;
	}
	FUNC4(root, eb, 0);
	return 0;
}