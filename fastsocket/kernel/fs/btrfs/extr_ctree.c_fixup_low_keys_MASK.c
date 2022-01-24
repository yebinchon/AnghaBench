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
struct extent_buffer {int dummy; } ;
struct btrfs_trans_handle {int dummy; } ;
struct btrfs_root {int /*<<< orphan*/  fs_info; } ;
struct btrfs_path {int* slots; struct extent_buffer** nodes; } ;
struct btrfs_disk_key {int dummy; } ;

/* Variables and functions */
 int BTRFS_MAX_LEVEL ; 
 int /*<<< orphan*/  FUNC0 (struct extent_buffer*) ; 
 int /*<<< orphan*/  FUNC1 (struct extent_buffer*,struct btrfs_disk_key*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct extent_buffer*,struct btrfs_disk_key*,int,int) ; 

__attribute__((used)) static void FUNC3(struct btrfs_trans_handle *trans,
			   struct btrfs_root *root, struct btrfs_path *path,
			   struct btrfs_disk_key *key, int level)
{
	int i;
	struct extent_buffer *t;

	for (i = level; i < BTRFS_MAX_LEVEL; i++) {
		int tslot = path->slots[i];
		if (!path->nodes[i])
			break;
		t = path->nodes[i];
		FUNC2(root->fs_info, t, key, tslot, 1);
		FUNC1(t, key, tslot);
		FUNC0(path->nodes[i]);
		if (tslot != 0)
			break;
	}
}