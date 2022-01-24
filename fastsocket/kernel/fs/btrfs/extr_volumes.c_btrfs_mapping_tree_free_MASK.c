#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
struct extent_map {int /*<<< orphan*/  bdev; } ;
struct TYPE_3__ {int /*<<< orphan*/  lock; } ;
struct btrfs_mapping_tree {TYPE_1__ map_tree; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct extent_map*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct extent_map* FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,struct extent_map*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(struct btrfs_mapping_tree *tree)
{
	struct extent_map *em;

	while (1) {
		FUNC4(&tree->map_tree.lock);
		em = FUNC2(&tree->map_tree, 0, (u64)-1);
		if (em)
			FUNC3(&tree->map_tree, em);
		FUNC5(&tree->map_tree.lock);
		if (!em)
			break;
		FUNC1(em->bdev);
		/* once for us */
		FUNC0(em);
		/* once for the tree */
		FUNC0(em);
	}
}