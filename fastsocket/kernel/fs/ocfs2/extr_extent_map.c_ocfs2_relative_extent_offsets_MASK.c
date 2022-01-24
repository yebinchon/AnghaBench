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
struct ocfs2_extent_rec {int /*<<< orphan*/  e_leaf_clusters; int /*<<< orphan*/  e_blkno; int /*<<< orphan*/  e_cpos; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct super_block*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct super_block *sb,
					  u32 v_cluster,
					  struct ocfs2_extent_rec *rec,
					  u32 *p_cluster, u32 *num_clusters)

{
	u32 coff = v_cluster - FUNC1(rec->e_cpos);

	*p_cluster = FUNC3(sb, FUNC2(rec->e_blkno));
	*p_cluster = *p_cluster + coff;

	if (num_clusters)
		*num_clusters = FUNC0(rec->e_leaf_clusters) - coff;
}