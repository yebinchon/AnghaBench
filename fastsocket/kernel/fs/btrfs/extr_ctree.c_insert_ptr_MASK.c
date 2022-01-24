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
typedef  int /*<<< orphan*/  u64 ;
struct extent_buffer {int dummy; } ;
struct btrfs_trans_handle {int /*<<< orphan*/  transid; } ;
struct btrfs_root {int /*<<< orphan*/  fs_info; } ;
struct btrfs_path {struct extent_buffer** nodes; } ;
struct btrfs_key_ptr {int dummy; } ;
struct btrfs_disk_key {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct btrfs_root*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  MOD_LOG_KEY_ADD ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct extent_buffer*) ; 
 int FUNC4 (struct extent_buffer*) ; 
 int /*<<< orphan*/  FUNC5 (struct extent_buffer*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (struct extent_buffer*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct extent_buffer*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct extent_buffer*,struct btrfs_disk_key*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct extent_buffer*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct extent_buffer*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,struct extent_buffer*,int,int,int) ; 
 int FUNC13 (int /*<<< orphan*/ ,struct extent_buffer*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC14(struct btrfs_trans_handle *trans,
		       struct btrfs_root *root, struct btrfs_path *path,
		       struct btrfs_disk_key *key, u64 bytenr,
		       int slot, int level)
{
	struct extent_buffer *lower;
	int nritems;
	int ret;

	FUNC1(!path->nodes[level]);
	FUNC3(path->nodes[level]);
	lower = path->nodes[level];
	nritems = FUNC4(lower);
	FUNC1(slot > nritems);
	FUNC1(nritems == FUNC0(root));
	if (slot != nritems) {
		if (level)
			FUNC12(root->fs_info, lower, slot + 1,
					     slot, nritems - slot);
		FUNC11(lower,
			      FUNC6(slot + 1),
			      FUNC6(slot),
			      (nritems - slot) * sizeof(struct btrfs_key_ptr));
	}
	if (level) {
		ret = FUNC13(root->fs_info, lower, slot,
					      MOD_LOG_KEY_ADD);
		FUNC1(ret < 0);
	}
	FUNC9(lower, key, slot);
	FUNC8(lower, slot, bytenr);
	FUNC2(trans->transid == 0);
	FUNC10(lower, slot, trans->transid);
	FUNC7(lower, nritems + 1);
	FUNC5(lower);
}