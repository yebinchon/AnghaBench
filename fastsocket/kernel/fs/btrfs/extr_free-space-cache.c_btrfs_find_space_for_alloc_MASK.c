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
struct btrfs_free_space_ctl {int /*<<< orphan*/  tree_lock; } ;
struct btrfs_free_space {scalar_t__ bytes; scalar_t__ offset; scalar_t__ bitmap; } ;
struct btrfs_block_group_cache {struct btrfs_free_space_ctl* free_space_ctl; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct btrfs_free_space_ctl*,struct btrfs_free_space*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  btrfs_free_space_cachep ; 
 struct btrfs_free_space* FUNC1 (struct btrfs_free_space_ctl*,scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (struct btrfs_free_space_ctl*,struct btrfs_free_space*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct btrfs_free_space*) ; 
 int /*<<< orphan*/  FUNC4 (struct btrfs_free_space_ctl*,struct btrfs_free_space*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct btrfs_free_space_ctl*,struct btrfs_free_space*) ; 

u64 FUNC8(struct btrfs_block_group_cache *block_group,
			       u64 offset, u64 bytes, u64 empty_size)
{
	struct btrfs_free_space_ctl *ctl = block_group->free_space_ctl;
	struct btrfs_free_space *entry = NULL;
	u64 bytes_search = bytes + empty_size;
	u64 ret = 0;

	FUNC5(&ctl->tree_lock);
	entry = FUNC1(ctl, &offset, &bytes_search);
	if (!entry)
		goto out;

	ret = offset;
	if (entry->bitmap) {
		FUNC0(ctl, entry, offset, bytes);
		if (!entry->bytes)
			FUNC2(ctl, entry);
	} else {
		FUNC7(ctl, entry);
		entry->offset += bytes;
		entry->bytes -= bytes;
		if (!entry->bytes)
			FUNC3(btrfs_free_space_cachep, entry);
		else
			FUNC4(ctl, entry);
	}

out:
	FUNC6(&ctl->tree_lock);

	return ret;
}