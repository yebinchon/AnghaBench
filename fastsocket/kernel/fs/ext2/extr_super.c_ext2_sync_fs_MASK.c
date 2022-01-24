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
struct super_block {scalar_t__ s_dirt; } ;
struct ext2_super_block {int s_state; void* s_mtime; void* s_free_inodes_count; void* s_free_blocks_count; } ;
struct TYPE_2__ {struct ext2_super_block* s_es; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct super_block*) ; 
 int /*<<< orphan*/  EXT2_VALID_FS ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC4 (struct super_block*,struct ext2_super_block*) ; 
 int /*<<< orphan*/  FUNC5 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC6 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (struct super_block*,struct ext2_super_block*) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 

__attribute__((used)) static int FUNC12(struct super_block *sb, int wait)
{
	struct ext2_super_block *es = FUNC0(sb)->s_es;

	FUNC10();
	FUNC3(sb);

	if (es->s_state & FUNC1(EXT2_VALID_FS)) {
		FUNC7("setting valid to 0\n");
		es->s_state &= FUNC1(~EXT2_VALID_FS);
		es->s_free_blocks_count =
			FUNC2(FUNC5(sb));
		es->s_free_inodes_count =
			FUNC2(FUNC6(sb));
		es->s_mtime = FUNC2(FUNC9());
		FUNC8(sb, es);
	} else {
		FUNC4(sb, es);
	}
	sb->s_dirt = 0;
	FUNC11();

	return 0;
}