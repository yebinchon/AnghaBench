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
struct btrfs_root {int dummy; } ;
struct btrfs_path {int* slots; struct extent_buffer** nodes; } ;
struct btrfs_key {int dummy; } ;
struct btrfs_disk_key {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct btrfs_disk_key*,struct btrfs_key*) ; 
 int FUNC2 (struct extent_buffer*) ; 
 int /*<<< orphan*/  FUNC3 (struct extent_buffer*,struct btrfs_disk_key*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct extent_buffer*) ; 
 int /*<<< orphan*/  FUNC5 (struct extent_buffer*,struct btrfs_disk_key*,int) ; 
 scalar_t__ FUNC6 (struct btrfs_disk_key*,struct btrfs_key*) ; 
 int /*<<< orphan*/  FUNC7 (struct btrfs_trans_handle*,struct btrfs_root*,struct btrfs_path*,struct btrfs_disk_key*,int) ; 

void FUNC8(struct btrfs_trans_handle *trans,
			     struct btrfs_root *root, struct btrfs_path *path,
			     struct btrfs_key *new_key)
{
	struct btrfs_disk_key disk_key;
	struct extent_buffer *eb;
	int slot;

	eb = path->nodes[0];
	slot = path->slots[0];
	if (slot > 0) {
		FUNC3(eb, &disk_key, slot - 1);
		FUNC0(FUNC6(&disk_key, new_key) >= 0);
	}
	if (slot < FUNC2(eb) - 1) {
		FUNC3(eb, &disk_key, slot + 1);
		FUNC0(FUNC6(&disk_key, new_key) <= 0);
	}

	FUNC1(&disk_key, new_key);
	FUNC5(eb, &disk_key, slot);
	FUNC4(eb);
	if (slot == 0)
		FUNC7(trans, root, path, &disk_key, 1);
}