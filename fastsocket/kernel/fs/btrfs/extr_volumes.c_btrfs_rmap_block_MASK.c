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
struct map_lookup {int type; int num_stripes; int sub_stripes; int stripe_len; TYPE_2__* stripes; } ;
struct extent_map_tree {int /*<<< orphan*/  lock; } ;
struct extent_map {scalar_t__ start; scalar_t__ len; scalar_t__ bdev; } ;
struct btrfs_mapping_tree {struct extent_map_tree map_tree; } ;
struct TYPE_4__ {scalar_t__ physical; TYPE_1__* dev; } ;
struct TYPE_3__ {scalar_t__ devid; } ;

/* Variables and functions */
 int BTRFS_BLOCK_GROUP_RAID0 ; 
 int BTRFS_BLOCK_GROUP_RAID10 ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC3 (struct extent_map*) ; 
 scalar_t__* FUNC4 (int,int /*<<< orphan*/ ) ; 
 struct extent_map* FUNC5 (struct extent_map_tree*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

int FUNC8(struct btrfs_mapping_tree *map_tree,
		     u64 chunk_start, u64 physical, u64 devid,
		     u64 **logical, int *naddrs, int *stripe_len)
{
	struct extent_map_tree *em_tree = &map_tree->map_tree;
	struct extent_map *em;
	struct map_lookup *map;
	u64 *buf;
	u64 bytenr;
	u64 length;
	u64 stripe_nr;
	int i, j, nr = 0;

	FUNC6(&em_tree->lock);
	em = FUNC5(em_tree, chunk_start, 1);
	FUNC7(&em_tree->lock);

	FUNC0(!em || em->start != chunk_start);
	map = (struct map_lookup *)em->bdev;

	length = em->len;
	if (map->type & BTRFS_BLOCK_GROUP_RAID10)
		FUNC2(length, map->num_stripes / map->sub_stripes);
	else if (map->type & BTRFS_BLOCK_GROUP_RAID0)
		FUNC2(length, map->num_stripes);

	buf = FUNC4(sizeof(u64) * map->num_stripes, GFP_NOFS);
	FUNC0(!buf); /* -ENOMEM */

	for (i = 0; i < map->num_stripes; i++) {
		if (devid && map->stripes[i].dev->devid != devid)
			continue;
		if (map->stripes[i].physical > physical ||
		    map->stripes[i].physical + length <= physical)
			continue;

		stripe_nr = physical - map->stripes[i].physical;
		FUNC2(stripe_nr, map->stripe_len);

		if (map->type & BTRFS_BLOCK_GROUP_RAID10) {
			stripe_nr = stripe_nr * map->num_stripes + i;
			FUNC2(stripe_nr, map->sub_stripes);
		} else if (map->type & BTRFS_BLOCK_GROUP_RAID0) {
			stripe_nr = stripe_nr * map->num_stripes + i;
		}
		bytenr = chunk_start + stripe_nr * map->stripe_len;
		FUNC1(nr >= map->num_stripes);
		for (j = 0; j < nr; j++) {
			if (buf[j] == bytenr)
				break;
		}
		if (j == nr) {
			FUNC1(nr >= map->num_stripes);
			buf[nr++] = bytenr;
		}
	}

	*logical = buf;
	*naddrs = nr;
	*stripe_len = map->stripe_len;

	FUNC3(em);
	return 0;
}