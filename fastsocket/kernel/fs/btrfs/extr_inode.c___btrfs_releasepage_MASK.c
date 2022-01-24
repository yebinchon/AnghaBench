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
struct page {TYPE_1__* mapping; } ;
struct extent_map_tree {int dummy; } ;
struct extent_io_tree {int dummy; } ;
typedef  int /*<<< orphan*/  gfp_t ;
struct TYPE_4__ {struct extent_map_tree extent_tree; struct extent_io_tree io_tree; } ;
struct TYPE_3__ {int /*<<< orphan*/  host; } ;

/* Variables and functions */
 TYPE_2__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 int /*<<< orphan*/  FUNC3 (struct page*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct extent_map_tree*,struct extent_io_tree*,struct page*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct page *page, gfp_t gfp_flags)
{
	struct extent_io_tree *tree;
	struct extent_map_tree *map;
	int ret;

	tree = &FUNC0(page->mapping->host)->io_tree;
	map = &FUNC0(page->mapping->host)->extent_tree;
	ret = FUNC4(map, tree, page, gfp_flags);
	if (ret == 1) {
		FUNC1(page);
		FUNC3(page, 0);
		FUNC2(page);
	}
	return ret;
}