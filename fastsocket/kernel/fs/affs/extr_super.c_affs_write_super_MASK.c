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
struct super_block {int s_flags; int s_dirt; } ;

/* Variables and functions */
 int MS_RDONLY ; 
 int /*<<< orphan*/  FUNC0 (struct super_block*,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct super_block*) ; 

__attribute__((used)) static void
FUNC5(struct super_block *sb)
{
	int clean = 2;

	FUNC2(sb);
	if (!(sb->s_flags & MS_RDONLY)) {
		//	if (sbi->s_bitmap[i].bm_bh) {
		//		if (buffer_dirty(sbi->s_bitmap[i].bm_bh)) {
		//			clean = 0;
		FUNC0(sb, clean);
		sb->s_dirt = !clean;	/* redo until bitmap synced */
	} else
		sb->s_dirt = 0;
	FUNC4(sb);

	FUNC3("AFFS: write_super() at %lu, clean=%d\n", FUNC1(), clean);
}