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
typedef  int u32 ;
struct extent_buffer {int dummy; } ;
struct btrfs_root {int dummy; } ;
struct btrfs_path {int reada; struct extent_buffer** nodes; } ;
struct btrfs_disk_key {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct btrfs_disk_key*) ; 
 struct extent_buffer* FUNC1 (struct btrfs_root*,scalar_t__,int) ; 
 int FUNC2 (struct extent_buffer*) ; 
 int FUNC3 (struct btrfs_root*,int) ; 
 scalar_t__ FUNC4 (struct extent_buffer*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct extent_buffer*,struct btrfs_disk_key*,int) ; 
 scalar_t__ FUNC6 (struct extent_buffer*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct extent_buffer*) ; 
 int /*<<< orphan*/  FUNC8 (struct btrfs_root*,scalar_t__,int,scalar_t__) ; 

__attribute__((used)) static void FUNC9(struct btrfs_root *root,
			     struct btrfs_path *path,
			     int level, int slot, u64 objectid)
{
	struct extent_buffer *node;
	struct btrfs_disk_key disk_key;
	u32 nritems;
	u64 search;
	u64 target;
	u64 nread = 0;
	u64 gen;
	int direction = path->reada;
	struct extent_buffer *eb;
	u32 nr;
	u32 blocksize;
	u32 nscan = 0;

	if (level != 1)
		return;

	if (!path->nodes[level])
		return;

	node = path->nodes[level];

	search = FUNC4(node, slot);
	blocksize = FUNC3(root, level - 1);
	eb = FUNC1(root, search, blocksize);
	if (eb) {
		FUNC7(eb);
		return;
	}

	target = search;

	nritems = FUNC2(node);
	nr = slot;

	while (1) {
		if (direction < 0) {
			if (nr == 0)
				break;
			nr--;
		} else if (direction > 0) {
			nr++;
			if (nr >= nritems)
				break;
		}
		if (path->reada < 0 && objectid) {
			FUNC5(node, &disk_key, nr);
			if (FUNC0(&disk_key) != objectid)
				break;
		}
		search = FUNC4(node, nr);
		if ((search <= target && target - search <= 65536) ||
		    (search > target && search - target <= 65536)) {
			gen = FUNC6(node, nr);
			FUNC8(root, search, blocksize, gen);
			nread += blocksize;
		}
		nscan++;
		if ((nread > 65536 || nscan > 32))
			break;
	}
}