#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u64 ;
struct map_lookup {int num_stripes; int type; int /*<<< orphan*/  sub_stripes; int /*<<< orphan*/  stripe_len; TYPE_2__* stripes; } ;
struct btrfs_trans_handle {int dummy; } ;
struct btrfs_stripe {int /*<<< orphan*/  dev_uuid; } ;
struct TYPE_6__ {int /*<<< orphan*/  objectid; } ;
struct btrfs_root {int /*<<< orphan*/  sectorsize; TYPE_3__ root_key; TYPE_1__* fs_info; } ;
struct btrfs_key {int offset; int /*<<< orphan*/  type; int /*<<< orphan*/  objectid; } ;
struct btrfs_device {int bytes_used; int /*<<< orphan*/  uuid; int /*<<< orphan*/  devid; } ;
struct btrfs_chunk {struct btrfs_stripe stripe; } ;
struct TYPE_5__ {int physical; struct btrfs_device* dev; } ;
struct TYPE_4__ {int free_chunk_space; int /*<<< orphan*/  free_chunk_lock; struct btrfs_root* chunk_root; } ;

/* Variables and functions */
 int BTRFS_BLOCK_GROUP_SYSTEM ; 
 int /*<<< orphan*/  BTRFS_CHUNK_ITEM_KEY ; 
 int /*<<< orphan*/  BTRFS_FIRST_CHUNK_TREE_OBJECTID ; 
 int /*<<< orphan*/  BTRFS_UUID_SIZE ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 int FUNC0 (struct btrfs_root*,struct btrfs_key*,struct btrfs_chunk*,size_t) ; 
 size_t FUNC1 (int) ; 
 int FUNC2 (struct btrfs_trans_handle*,struct btrfs_root*,struct btrfs_key*,struct btrfs_chunk*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (struct btrfs_chunk*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct btrfs_chunk*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct btrfs_chunk*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct btrfs_chunk*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct btrfs_chunk*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct btrfs_chunk*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct btrfs_chunk*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct btrfs_chunk*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct btrfs_chunk*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct btrfs_stripe*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct btrfs_stripe*,int) ; 
 int FUNC14 (struct btrfs_trans_handle*,struct btrfs_device*) ; 
 int /*<<< orphan*/  FUNC15 (struct btrfs_chunk*) ; 
 struct btrfs_chunk* FUNC16 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC20(struct btrfs_trans_handle *trans,
				struct btrfs_root *extent_root,
				struct map_lookup *map, u64 chunk_offset,
				u64 chunk_size, u64 stripe_size)
{
	u64 dev_offset;
	struct btrfs_key key;
	struct btrfs_root *chunk_root = extent_root->fs_info->chunk_root;
	struct btrfs_device *device;
	struct btrfs_chunk *chunk;
	struct btrfs_stripe *stripe;
	size_t item_size = FUNC1(map->num_stripes);
	int index = 0;
	int ret;

	chunk = FUNC16(item_size, GFP_NOFS);
	if (!chunk)
		return -ENOMEM;

	index = 0;
	while (index < map->num_stripes) {
		device = map->stripes[index].dev;
		device->bytes_used += stripe_size;
		ret = FUNC14(trans, device);
		if (ret)
			goto out_free;
		index++;
	}

	FUNC18(&extent_root->fs_info->free_chunk_lock);
	extent_root->fs_info->free_chunk_space -= (stripe_size *
						   map->num_stripes);
	FUNC19(&extent_root->fs_info->free_chunk_lock);

	index = 0;
	stripe = &chunk->stripe;
	while (index < map->num_stripes) {
		device = map->stripes[index].dev;
		dev_offset = map->stripes[index].physical;

		FUNC12(stripe, device->devid);
		FUNC13(stripe, dev_offset);
		FUNC17(stripe->dev_uuid, device->uuid, BTRFS_UUID_SIZE);
		stripe++;
		index++;
	}

	FUNC5(chunk, chunk_size);
	FUNC7(chunk, extent_root->root_key.objectid);
	FUNC9(chunk, map->stripe_len);
	FUNC11(chunk, map->type);
	FUNC6(chunk, map->num_stripes);
	FUNC3(chunk, map->stripe_len);
	FUNC4(chunk, map->stripe_len);
	FUNC8(chunk, extent_root->sectorsize);
	FUNC10(chunk, map->sub_stripes);

	key.objectid = BTRFS_FIRST_CHUNK_TREE_OBJECTID;
	key.type = BTRFS_CHUNK_ITEM_KEY;
	key.offset = chunk_offset;

	ret = FUNC2(trans, chunk_root, &key, chunk, item_size);

	if (ret == 0 && map->type & BTRFS_BLOCK_GROUP_SYSTEM) {
		/*
		 * TODO: Cleanup of inserted chunk root in case of
		 * failure.
		 */
		ret = FUNC0(chunk_root, &key, chunk,
					     item_size);
	}

out_free:
	FUNC15(chunk);
	return ret;
}