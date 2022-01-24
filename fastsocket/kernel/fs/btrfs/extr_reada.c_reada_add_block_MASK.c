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
struct reada_extent {int /*<<< orphan*/  lock; int /*<<< orphan*/  extctl; } ;
struct reada_extctl {int /*<<< orphan*/  list; int /*<<< orphan*/  generation; struct reada_control* rc; } ;
struct reada_control {int /*<<< orphan*/  elems; struct btrfs_root* root; } ;
struct btrfs_root {int /*<<< orphan*/  fs_info; } ;
struct btrfs_key {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_NOFS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct reada_extctl* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct reada_extent*) ; 
 struct reada_extent* FUNC4 (struct btrfs_root*,int /*<<< orphan*/ ,struct btrfs_key*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct reada_control *rc, u64 logical,
			   struct btrfs_key *top, int level, u64 generation)
{
	struct btrfs_root *root = rc->root;
	struct reada_extent *re;
	struct reada_extctl *rec;

	re = FUNC4(root, logical, top, level); /* takes one ref */
	if (!re)
		return -1;

	rec = FUNC1(sizeof(*rec), GFP_NOFS);
	if (!rec) {
		FUNC3(root->fs_info, re);
		return -1;
	}

	rec->rc = rc;
	rec->generation = generation;
	FUNC0(&rc->elems);

	FUNC5(&re->lock);
	FUNC2(&rec->list, &re->extctl);
	FUNC6(&re->lock);

	/* leave the ref on the extent */

	return 0;
}