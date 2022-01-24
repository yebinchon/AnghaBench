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
struct walk_control {int (* process_func ) (struct btrfs_root*,struct extent_buffer*,struct walk_control*,int /*<<< orphan*/ ) ;scalar_t__ free; } ;
struct extent_buffer {int /*<<< orphan*/  len; int /*<<< orphan*/  start; } ;
struct btrfs_trans_handle {int dummy; } ;
struct TYPE_2__ {scalar_t__ objectid; } ;
struct btrfs_root {TYPE_1__ root_key; struct extent_buffer* node; } ;
struct btrfs_path {struct extent_buffer** nodes; scalar_t__* slots; } ;

/* Variables and functions */
 scalar_t__ BTRFS_TREE_LOG_OBJECTID ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 struct btrfs_path* FUNC2 () ; 
 int FUNC3 (struct btrfs_root*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct btrfs_path*) ; 
 int /*<<< orphan*/  FUNC5 (struct extent_buffer*) ; 
 int FUNC6 (struct extent_buffer*) ; 
 int /*<<< orphan*/  FUNC7 (struct extent_buffer*) ; 
 int /*<<< orphan*/  FUNC8 (struct extent_buffer*) ; 
 int /*<<< orphan*/  FUNC9 (struct extent_buffer*) ; 
 int /*<<< orphan*/  FUNC10 (struct extent_buffer*) ; 
 int /*<<< orphan*/  FUNC11 (struct btrfs_trans_handle*,struct btrfs_root*,struct extent_buffer*) ; 
 int /*<<< orphan*/  FUNC12 (struct extent_buffer*) ; 
 int /*<<< orphan*/  FUNC13 (struct extent_buffer*) ; 
 int FUNC14 (struct btrfs_root*,struct extent_buffer*,struct walk_control*,int /*<<< orphan*/ ) ; 
 int FUNC15 (struct btrfs_trans_handle*,struct btrfs_root*,struct btrfs_path*,int*,struct walk_control*) ; 
 int FUNC16 (struct btrfs_trans_handle*,struct btrfs_root*,struct btrfs_path*,int*,struct walk_control*) ; 

__attribute__((used)) static int FUNC17(struct btrfs_trans_handle *trans,
			 struct btrfs_root *log, struct walk_control *wc)
{
	int ret = 0;
	int wret;
	int level;
	struct btrfs_path *path;
	int i;
	int orig_level;

	path = FUNC2();
	if (!path)
		return -ENOMEM;

	level = FUNC6(log->node);
	orig_level = level;
	path->nodes[level] = log->node;
	FUNC12(log->node);
	path->slots[level] = 0;

	while (1) {
		wret = FUNC15(trans, log, path, &level, wc);
		if (wret > 0)
			break;
		if (wret < 0) {
			ret = wret;
			goto out;
		}

		wret = FUNC16(trans, log, path, &level, wc);
		if (wret > 0)
			break;
		if (wret < 0) {
			ret = wret;
			goto out;
		}
	}

	/* was the root node processed? if not, catch it here */
	if (path->nodes[orig_level]) {
		ret = wc->process_func(log, path->nodes[orig_level], wc,
			 FUNC5(path->nodes[orig_level]));
		if (ret)
			goto out;
		if (wc->free) {
			struct extent_buffer *next;

			next = path->nodes[orig_level];

			FUNC8(next);
			FUNC7(next);
			FUNC11(trans, log, next);
			FUNC10(next);
			FUNC9(next);

			FUNC1(log->root_key.objectid !=
				BTRFS_TREE_LOG_OBJECTID);
			ret = FUNC3(log, next->start,
							 next->len);
			FUNC0(ret); /* -ENOMEM or logic errors */
		}
	}

out:
	for (i = 0; i <= orig_level; i++) {
		if (path->nodes[i]) {
			FUNC13(path->nodes[i]);
			path->nodes[i] = NULL;
		}
	}
	FUNC4(path);
	return ret;
}