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
typedef  scalar_t__ u64 ;
struct super_block {int dummy; } ;
struct ocfs2_extent_rec {int /*<<< orphan*/  e_leaf_clusters; int /*<<< orphan*/  e_blkno; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct super_block*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct super_block *sb,
				     struct ocfs2_extent_rec *ext,
				     u64 blkno)
{
	u64 blk_end = FUNC1(ext->e_blkno);

	blk_end += FUNC2(sb,
				    FUNC0(ext->e_leaf_clusters));

	return blkno == blk_end;
}