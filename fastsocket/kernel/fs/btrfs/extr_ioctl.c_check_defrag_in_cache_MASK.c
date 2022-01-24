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
typedef  int u64 ;
struct inode {int dummy; } ;
struct extent_map_tree {int /*<<< orphan*/  lock; } ;
struct extent_map {int dummy; } ;
struct extent_io_tree {int dummy; } ;
struct TYPE_2__ {struct extent_map_tree extent_tree; struct extent_io_tree io_tree; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  EXTENT_DELALLOC ; 
 int /*<<< orphan*/  PAGE_CACHE_SIZE ; 
 int FUNC1 (struct extent_io_tree*,int*,int,int,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct extent_map*) ; 
 int /*<<< orphan*/  FUNC3 (struct extent_map*) ; 
 struct extent_map* FUNC4 (struct extent_map_tree*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct inode *inode, u64 offset, int thresh)
{
	struct extent_io_tree *io_tree = &FUNC0(inode)->io_tree;
	struct extent_map *em = NULL;
	struct extent_map_tree *em_tree = &FUNC0(inode)->extent_tree;
	u64 end;

	FUNC5(&em_tree->lock);
	em = FUNC4(em_tree, offset, PAGE_CACHE_SIZE);
	FUNC6(&em_tree->lock);

	if (em) {
		end = FUNC2(em);
		FUNC3(em);
		if (end - offset > thresh)
			return 0;
	}
	/* if we already have a nice delalloc here, just stop */
	thresh /= 2;
	end = FUNC1(io_tree, &offset, offset + thresh,
			       thresh, EXTENT_DELALLOC, 1);
	if (end >= thresh)
		return 0;
	return 1;
}