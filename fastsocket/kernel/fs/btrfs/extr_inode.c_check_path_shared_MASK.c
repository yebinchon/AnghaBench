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
typedef  int u64 ;
struct extent_buffer {int /*<<< orphan*/  len; int /*<<< orphan*/  start; } ;
struct btrfs_root {int dummy; } ;
struct btrfs_path {struct extent_buffer** nodes; } ;

/* Variables and functions */
 int BTRFS_MAX_LEVEL ; 
 int /*<<< orphan*/  FUNC0 (struct btrfs_root*,struct extent_buffer*) ; 
 int FUNC1 (int /*<<< orphan*/ *,struct btrfs_root*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct btrfs_root *root,
			     struct btrfs_path *path)
{
	struct extent_buffer *eb;
	int level;
	u64 refs = 1;

	for (level = 0; level < BTRFS_MAX_LEVEL; level++) {
		int ret;

		if (!path->nodes[level])
			break;
		eb = path->nodes[level];
		if (!FUNC0(root, eb))
			continue;
		ret = FUNC1(NULL, root, eb->start, eb->len,
					       &refs, NULL);
		if (refs > 1)
			return 1;
	}
	return 0;
}