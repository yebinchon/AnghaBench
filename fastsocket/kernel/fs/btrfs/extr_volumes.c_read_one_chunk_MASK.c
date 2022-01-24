#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  scalar_t__ u64 ;
struct map_lookup {int num_stripes; TYPE_2__* stripes; int /*<<< orphan*/  sub_stripes; int /*<<< orphan*/  type; int /*<<< orphan*/  stripe_len; int /*<<< orphan*/  sector_size; int /*<<< orphan*/  io_align; int /*<<< orphan*/  io_width; } ;
struct extent_map {scalar_t__ start; scalar_t__ len; scalar_t__ block_len; scalar_t__ block_start; struct block_device* bdev; } ;
struct extent_buffer {int dummy; } ;
struct btrfs_root {TYPE_1__* fs_info; } ;
struct TYPE_9__ {int /*<<< orphan*/  lock; } ;
struct btrfs_mapping_tree {TYPE_3__ map_tree; } ;
struct btrfs_key {scalar_t__ offset; } ;
struct btrfs_chunk {int dummy; } ;
struct block_device {int dummy; } ;
struct TYPE_10__ {int in_fs_metadata; } ;
struct TYPE_8__ {TYPE_4__* dev; int /*<<< orphan*/  physical; } ;
struct TYPE_7__ {struct btrfs_mapping_tree mapping_tree; } ;

/* Variables and functions */
 int BTRFS_UUID_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  DEGRADED ; 
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 int FUNC1 (TYPE_3__*,struct extent_map*) ; 
 TYPE_4__* FUNC2 (struct btrfs_root*,scalar_t__,int /*<<< orphan*/ *) ; 
 struct extent_map* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct extent_buffer*,struct btrfs_chunk*) ; 
 int /*<<< orphan*/  FUNC5 (struct extent_buffer*,struct btrfs_chunk*) ; 
 scalar_t__ FUNC6 (struct extent_buffer*,struct btrfs_chunk*) ; 
 int FUNC7 (struct extent_buffer*,struct btrfs_chunk*) ; 
 int /*<<< orphan*/  FUNC8 (struct extent_buffer*,struct btrfs_chunk*) ; 
 int /*<<< orphan*/  FUNC9 (struct extent_buffer*,struct btrfs_chunk*) ; 
 int /*<<< orphan*/  FUNC10 (struct extent_buffer*,struct btrfs_chunk*) ; 
 int /*<<< orphan*/  FUNC11 (struct extent_buffer*,struct btrfs_chunk*) ; 
 TYPE_4__* FUNC12 (struct btrfs_root*,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (struct btrfs_chunk*,int) ; 
 scalar_t__ FUNC14 (struct extent_buffer*,struct btrfs_chunk*,int) ; 
 int /*<<< orphan*/  FUNC15 (struct extent_buffer*,struct btrfs_chunk*,int) ; 
 int /*<<< orphan*/  FUNC16 (struct btrfs_root*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct extent_map*) ; 
 int /*<<< orphan*/  FUNC18 (struct map_lookup*) ; 
 struct map_lookup* FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct extent_map* FUNC20 (TYPE_3__*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC21 (int) ; 
 int /*<<< orphan*/  FUNC22 (struct extent_buffer*,int /*<<< orphan*/ *,unsigned long,int) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC27(struct btrfs_root *root, struct btrfs_key *key,
			  struct extent_buffer *leaf,
			  struct btrfs_chunk *chunk)
{
	struct btrfs_mapping_tree *map_tree = &root->fs_info->mapping_tree;
	struct map_lookup *map;
	struct extent_map *em;
	u64 logical;
	u64 length;
	u64 devid;
	u8 uuid[BTRFS_UUID_SIZE];
	int num_stripes;
	int ret;
	int i;

	logical = key->offset;
	length = FUNC6(leaf, chunk);

	FUNC23(&map_tree->map_tree.lock);
	em = FUNC20(&map_tree->map_tree, logical, 1);
	FUNC24(&map_tree->map_tree.lock);

	/* already mapped? */
	if (em && em->start <= logical && em->start + em->len > logical) {
		FUNC17(em);
		return 0;
	} else if (em) {
		FUNC17(em);
	}

	em = FUNC3();
	if (!em)
		return -ENOMEM;
	num_stripes = FUNC7(leaf, chunk);
	map = FUNC19(FUNC21(num_stripes), GFP_NOFS);
	if (!map) {
		FUNC17(em);
		return -ENOMEM;
	}

	em->bdev = (struct block_device *)map;
	em->start = logical;
	em->len = length;
	em->block_start = 0;
	em->block_len = em->len;

	map->num_stripes = num_stripes;
	map->io_width = FUNC5(leaf, chunk);
	map->io_align = FUNC4(leaf, chunk);
	map->sector_size = FUNC8(leaf, chunk);
	map->stripe_len = FUNC9(leaf, chunk);
	map->type = FUNC11(leaf, chunk);
	map->sub_stripes = FUNC10(leaf, chunk);
	for (i = 0; i < num_stripes; i++) {
		map->stripes[i].physical =
			FUNC15(leaf, chunk, i);
		devid = FUNC14(leaf, chunk, i);
		FUNC22(leaf, uuid, (unsigned long)
				   FUNC13(chunk, i),
				   BTRFS_UUID_SIZE);
		map->stripes[i].dev = FUNC12(root, devid, uuid,
							NULL);
		if (!map->stripes[i].dev && !FUNC16(root, DEGRADED)) {
			FUNC18(map);
			FUNC17(em);
			return -EIO;
		}
		if (!map->stripes[i].dev) {
			map->stripes[i].dev =
				FUNC2(root, devid, uuid);
			if (!map->stripes[i].dev) {
				FUNC18(map);
				FUNC17(em);
				return -EIO;
			}
		}
		map->stripes[i].dev->in_fs_metadata = 1;
	}

	FUNC25(&map_tree->map_tree.lock);
	ret = FUNC1(&map_tree->map_tree, em);
	FUNC26(&map_tree->map_tree.lock);
	FUNC0(ret); /* Tree corruption */
	FUNC17(em);

	return 0;
}