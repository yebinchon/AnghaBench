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
typedef  scalar_t__ u32 ;
struct super_block {int dummy; } ;
struct ocfs2_extent_rec {int /*<<< orphan*/  e_flags; int /*<<< orphan*/  e_blkno; int /*<<< orphan*/  e_leaf_clusters; int /*<<< orphan*/  e_cpos; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ocfs2_extent_rec*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct super_block*,scalar_t__) ; 

__attribute__((used)) static void FUNC7(struct super_block *sb,
				       struct ocfs2_extent_rec *split_rec,
				       u32 cpos,
				       struct ocfs2_extent_rec *rec)
{
	u32 rec_cpos = FUNC3(rec->e_cpos);
	u32 rec_range = rec_cpos + FUNC2(rec->e_leaf_clusters);

	FUNC5(split_rec, 0, sizeof(struct ocfs2_extent_rec));

	split_rec->e_cpos = FUNC1(cpos);
	split_rec->e_leaf_clusters = FUNC0(rec_range - cpos);

	split_rec->e_blkno = rec->e_blkno;
	FUNC4(&split_rec->e_blkno,
		     FUNC6(sb, cpos - rec_cpos));

	split_rec->e_flags = rec->e_flags;
}