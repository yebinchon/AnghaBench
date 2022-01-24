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
typedef  int /*<<< orphan*/  u64 ;
struct tree_mod_root {int /*<<< orphan*/  level; int /*<<< orphan*/  logical; } ;
struct tree_mod_elem {scalar_t__ op; int /*<<< orphan*/  generation; struct tree_mod_root old_root; } ;
struct extent_buffer {int /*<<< orphan*/  start; } ;
struct TYPE_2__ {int /*<<< orphan*/  objectid; } ;
struct btrfs_root {TYPE_1__ root_key; struct extent_buffer* node; int /*<<< orphan*/  nodesize; int /*<<< orphan*/  fs_info; } ;

/* Variables and functions */
 int /*<<< orphan*/  BTRFS_MIXED_BACKREF_REV ; 
 scalar_t__ MOD_LOG_ROOT_REPLACE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct tree_mod_elem* FUNC1 (int /*<<< orphan*/ ,struct btrfs_root*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct extent_buffer*,int /*<<< orphan*/ ,struct tree_mod_elem*) ; 
 struct extent_buffer* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct extent_buffer* FUNC4 (struct extent_buffer*) ; 
 scalar_t__ FUNC5 (struct extent_buffer*) ; 
 struct extent_buffer* FUNC6 (struct btrfs_root*) ; 
 int /*<<< orphan*/  FUNC7 (struct extent_buffer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct extent_buffer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct extent_buffer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct extent_buffer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct extent_buffer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct extent_buffer*) ; 
 int /*<<< orphan*/  FUNC13 (struct extent_buffer*) ; 
 int /*<<< orphan*/  FUNC14 (struct extent_buffer*) ; 
 int /*<<< orphan*/  FUNC15 (struct extent_buffer*) ; 
 struct tree_mod_elem* FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline struct extent_buffer *
FUNC17(struct btrfs_root *root, u64 time_seq)
{
	struct tree_mod_elem *tm;
	struct extent_buffer *eb;
	struct tree_mod_root *old_root = NULL;
	u64 old_generation = 0;
	u64 logical;

	eb = FUNC6(root);
	tm = FUNC1(root->fs_info, root, time_seq);
	if (!tm)
		return root->node;

	if (tm->op == MOD_LOG_ROOT_REPLACE) {
		old_root = &tm->old_root;
		old_generation = tm->generation;
		logical = old_root->logical;
	} else {
		logical = root->node->start;
	}

	tm = FUNC16(root->fs_info, logical, time_seq);
	if (old_root)
		eb = FUNC3(logical, root->nodesize);
	else
		eb = FUNC4(root->node);
	FUNC13(root->node);
	FUNC15(root->node);
	if (!eb)
		return NULL;
	FUNC12(eb);
	if (old_root) {
		FUNC8(eb, eb->start);
		FUNC7(eb, BTRFS_MIXED_BACKREF_REV);
		FUNC11(eb, root->root_key.objectid);
		FUNC10(eb, old_root->level);
		FUNC9(eb, old_generation);
	}
	if (tm)
		FUNC2(eb, time_seq, tm);
	else
		FUNC0(FUNC5(eb) != 0);
	FUNC14(eb);

	return eb;
}