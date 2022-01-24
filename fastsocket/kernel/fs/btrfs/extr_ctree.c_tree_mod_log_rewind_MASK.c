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
struct tree_mod_elem {scalar_t__ op; scalar_t__ slot; } ;
struct extent_buffer {int /*<<< orphan*/  start; } ;
struct btrfs_fs_info {TYPE_1__* tree_root; } ;
struct TYPE_2__ {int /*<<< orphan*/  nodesize; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ MOD_LOG_KEY_REMOVE_WHILE_FREEING ; 
 int /*<<< orphan*/  FUNC1 (struct extent_buffer*,int /*<<< orphan*/ ,struct tree_mod_elem*) ; 
 struct extent_buffer* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct extent_buffer* FUNC3 (struct extent_buffer*) ; 
 int /*<<< orphan*/  FUNC4 (struct extent_buffer*) ; 
 scalar_t__ FUNC5 (struct extent_buffer*) ; 
 int /*<<< orphan*/  FUNC6 (struct extent_buffer*) ; 
 int /*<<< orphan*/  FUNC7 (struct extent_buffer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct extent_buffer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct extent_buffer*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (struct extent_buffer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct extent_buffer*) ; 
 int /*<<< orphan*/  FUNC12 (struct extent_buffer*) ; 
 struct tree_mod_elem* FUNC13 (struct btrfs_fs_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct extent_buffer *
FUNC14(struct btrfs_fs_info *fs_info, struct extent_buffer *eb,
		    u64 time_seq)
{
	struct extent_buffer *eb_rewin;
	struct tree_mod_elem *tm;

	if (!time_seq)
		return eb;

	if (FUNC5(eb) == 0)
		return eb;

	tm = FUNC13(fs_info, eb->start, time_seq);
	if (!tm)
		return eb;

	if (tm->op == MOD_LOG_KEY_REMOVE_WHILE_FREEING) {
		FUNC0(tm->slot != 0);
		eb_rewin = FUNC2(eb->start,
						fs_info->tree_root->nodesize);
		FUNC0(!eb_rewin);
		FUNC8(eb_rewin, eb->start);
		FUNC7(eb_rewin,
					     FUNC4(eb));
		FUNC10(eb_rewin, FUNC6(eb));
		FUNC9(eb_rewin, FUNC5(eb));
	} else {
		eb_rewin = FUNC3(eb);
		FUNC0(!eb_rewin);
	}

	FUNC11(eb_rewin);
	FUNC12(eb);

	FUNC1(eb_rewin, time_seq, tm);

	return eb_rewin;
}