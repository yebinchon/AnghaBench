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
typedef  scalar_t__ u64 ;
struct map_lookup {int type; int num_stripes; int sub_stripes; } ;
struct extent_map_tree {int /*<<< orphan*/  lock; } ;
struct extent_map {scalar_t__ start; scalar_t__ len; scalar_t__ bdev; } ;
struct btrfs_mapping_tree {struct extent_map_tree map_tree; } ;

/* Variables and functions */
 int BTRFS_BLOCK_GROUP_DUP ; 
 int BTRFS_BLOCK_GROUP_RAID1 ; 
 int BTRFS_BLOCK_GROUP_RAID10 ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct extent_map*) ; 
 struct extent_map* FUNC2 (struct extent_map_tree*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

int FUNC5(struct btrfs_mapping_tree *map_tree, u64 logical, u64 len)
{
	struct extent_map *em;
	struct map_lookup *map;
	struct extent_map_tree *em_tree = &map_tree->map_tree;
	int ret;

	FUNC3(&em_tree->lock);
	em = FUNC2(em_tree, logical, len);
	FUNC4(&em_tree->lock);
	FUNC0(!em);

	FUNC0(em->start > logical || em->start + em->len < logical);
	map = (struct map_lookup *)em->bdev;
	if (map->type & (BTRFS_BLOCK_GROUP_DUP | BTRFS_BLOCK_GROUP_RAID1))
		ret = map->num_stripes;
	else if (map->type & BTRFS_BLOCK_GROUP_RAID10)
		ret = map->sub_stripes;
	else
		ret = 1;
	FUNC1(em);
	return ret;
}