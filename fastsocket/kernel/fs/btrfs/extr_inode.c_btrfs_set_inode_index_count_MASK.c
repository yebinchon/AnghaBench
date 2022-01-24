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
struct extent_buffer {int dummy; } ;
struct btrfs_root {int dummy; } ;
struct btrfs_path {scalar_t__* slots; struct extent_buffer** nodes; } ;
struct btrfs_key {scalar_t__ objectid; int offset; } ;
struct TYPE_2__ {int index_cnt; struct btrfs_root* root; } ;

/* Variables and functions */
 scalar_t__ BTRFS_DIR_INDEX_KEY ; 
 TYPE_1__* FUNC0 (struct inode*) ; 
 int ENOMEM ; 
 struct btrfs_path* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct btrfs_path*) ; 
 scalar_t__ FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (struct extent_buffer*,struct btrfs_key*,scalar_t__) ; 
 scalar_t__ FUNC5 (struct btrfs_key*) ; 
 int FUNC6 (int /*<<< orphan*/ *,struct btrfs_root*,struct btrfs_key*,struct btrfs_path*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct btrfs_key*,scalar_t__) ; 

__attribute__((used)) static int FUNC8(struct inode *inode)
{
	struct btrfs_root *root = FUNC0(inode)->root;
	struct btrfs_key key, found_key;
	struct btrfs_path *path;
	struct extent_buffer *leaf;
	int ret;

	key.objectid = FUNC3(inode);
	FUNC7(&key, BTRFS_DIR_INDEX_KEY);
	key.offset = (u64)-1;

	path = FUNC1();
	if (!path)
		return -ENOMEM;

	ret = FUNC6(NULL, root, &key, path, 0, 0);
	if (ret < 0)
		goto out;
	/* FIXME: we should be able to handle this */
	if (ret == 0)
		goto out;
	ret = 0;

	/*
	 * MAGIC NUMBER EXPLANATION:
	 * since we search a directory based on f_pos we have to start at 2
	 * since '.' and '..' have f_pos of 0 and 1 respectively, so everybody
	 * else has to start at 2
	 */
	if (path->slots[0] == 0) {
		FUNC0(inode)->index_cnt = 2;
		goto out;
	}

	path->slots[0]--;

	leaf = path->nodes[0];
	FUNC4(leaf, &found_key, path->slots[0]);

	if (found_key.objectid != FUNC3(inode) ||
	    FUNC5(&found_key) != BTRFS_DIR_INDEX_KEY) {
		FUNC0(inode)->index_cnt = 2;
		goto out;
	}

	FUNC0(inode)->index_cnt = found_key.offset + 1;
out:
	FUNC2(path);
	return ret;
}