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
struct super_block {int dummy; } ;
struct reiserfs_journal {scalar_t__ j_header_bh; int /*<<< orphan*/  j_list_bitmap; struct reiserfs_journal* j_cnode_free_orig; int /*<<< orphan*/  j_num_lists; int /*<<< orphan*/  j_current_jl; } ;

/* Variables and functions */
 struct reiserfs_journal* FUNC0 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC3 (struct super_block*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct super_block*,struct reiserfs_journal*) ; 
 int /*<<< orphan*/  FUNC6 (struct reiserfs_journal*) ; 

__attribute__((used)) static void FUNC7(struct super_block *sb)
{
	struct reiserfs_journal *journal = FUNC0(sb);
	FUNC4(journal->j_current_jl);
	journal->j_num_lists--;

	FUNC6(journal->j_cnode_free_orig);
	FUNC3(sb, journal->j_list_bitmap);
	FUNC2(sb);	/* must be after free_list_bitmaps */
	if (journal->j_header_bh) {
		FUNC1(journal->j_header_bh);
	}
	/* j_header_bh is on the journal dev, make sure not to release the journal
	 * dev until we brelse j_header_bh
	 */
	FUNC5(sb, journal);
	FUNC6(journal);
}