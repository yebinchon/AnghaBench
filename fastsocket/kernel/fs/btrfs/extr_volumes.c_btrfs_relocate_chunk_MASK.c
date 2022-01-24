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
typedef  scalar_t__ u64 ;
struct map_lookup {int num_stripes; int type; TYPE_3__* stripes; } ;
struct extent_map_tree {int /*<<< orphan*/  lock; } ;
struct extent_map {scalar_t__ start; scalar_t__ len; int /*<<< orphan*/ * bdev; } ;
struct btrfs_trans_handle {int dummy; } ;
struct btrfs_root {TYPE_2__* fs_info; } ;
struct TYPE_6__ {scalar_t__ dev; int /*<<< orphan*/  physical; } ;
struct TYPE_4__ {struct extent_map_tree map_tree; } ;
struct TYPE_5__ {TYPE_1__ mapping_tree; struct btrfs_root* extent_root; struct btrfs_root* chunk_root; } ;

/* Variables and functions */
 int BTRFS_BLOCK_GROUP_SYSTEM ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENOSPC ; 
 int FUNC1 (struct btrfs_trans_handle*) ; 
 int FUNC2 (struct btrfs_root*,scalar_t__) ; 
 int FUNC3 (struct btrfs_root*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct btrfs_trans_handle*,struct btrfs_root*) ; 
 int FUNC5 (struct btrfs_trans_handle*,struct btrfs_root*,scalar_t__,scalar_t__,scalar_t__) ; 
 int FUNC6 (struct btrfs_trans_handle*,scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct btrfs_root*,scalar_t__) ; 
 int FUNC8 (struct btrfs_trans_handle*,struct btrfs_root*,scalar_t__) ; 
 struct btrfs_trans_handle* FUNC9 (struct btrfs_root*,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct btrfs_trans_handle*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (struct extent_map*) ; 
 int /*<<< orphan*/  FUNC12 (struct map_lookup*) ; 
 int /*<<< orphan*/  FUNC13 (struct btrfs_root*) ; 
 struct extent_map* FUNC14 (struct extent_map_tree*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (struct extent_map_tree*,struct extent_map*) ; 
 int /*<<< orphan*/  FUNC18 (struct btrfs_root*,struct map_lookup*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC19 (struct btrfs_root*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC22(struct btrfs_root *root,
			 u64 chunk_tree, u64 chunk_objectid,
			 u64 chunk_offset)
{
	struct extent_map_tree *em_tree;
	struct btrfs_root *extent_root;
	struct btrfs_trans_handle *trans;
	struct extent_map *em;
	struct map_lookup *map;
	int ret;
	int i;

	root = root->fs_info->chunk_root;
	extent_root = root->fs_info->extent_root;
	em_tree = &root->fs_info->mapping_tree.map_tree;

	ret = FUNC2(extent_root, chunk_offset);
	if (ret)
		return -ENOSPC;

	/* step one, relocate all the extents inside this chunk */
	ret = FUNC7(extent_root, chunk_offset);
	if (ret)
		return ret;

	trans = FUNC9(root, 0);
	FUNC0(FUNC1(trans));

	FUNC13(root);

	/*
	 * step two, delete the device extents and the
	 * chunk tree entries
	 */
	FUNC15(&em_tree->lock);
	em = FUNC14(em_tree, chunk_offset, 1);
	FUNC16(&em_tree->lock);

	FUNC0(!em || em->start > chunk_offset ||
	       em->start + em->len < chunk_offset);
	map = (struct map_lookup *)em->bdev;

	for (i = 0; i < map->num_stripes; i++) {
		ret = FUNC6(trans, map->stripes[i].dev,
					    map->stripes[i].physical);
		FUNC0(ret);

		if (map->stripes[i].dev) {
			ret = FUNC10(trans, map->stripes[i].dev);
			FUNC0(ret);
		}
	}
	ret = FUNC5(trans, root, chunk_tree, chunk_objectid,
			       chunk_offset);

	FUNC0(ret);

	FUNC18(root, map, chunk_offset, em->len);

	if (map->type & BTRFS_BLOCK_GROUP_SYSTEM) {
		ret = FUNC3(root, chunk_objectid, chunk_offset);
		FUNC0(ret);
	}

	ret = FUNC8(trans, extent_root, chunk_offset);
	FUNC0(ret);

	FUNC20(&em_tree->lock);
	FUNC17(em_tree, em);
	FUNC21(&em_tree->lock);

	FUNC12(map);
	em->bdev = NULL;

	/* once for the tree */
	FUNC11(em);
	/* once for us */
	FUNC11(em);

	FUNC19(root);
	FUNC4(trans, root);
	return 0;
}