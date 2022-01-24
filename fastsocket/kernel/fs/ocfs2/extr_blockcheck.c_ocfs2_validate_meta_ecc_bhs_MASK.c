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
struct ocfs2_super {int /*<<< orphan*/  osb_ecc_stats; } ;
struct ocfs2_block_check {int dummy; } ;
struct buffer_head {int dummy; } ;

/* Variables and functions */
 struct ocfs2_super* FUNC0 (struct super_block*) ; 
 int FUNC1 (struct buffer_head**,int,struct ocfs2_block_check*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct ocfs2_super*) ; 

int FUNC3(struct super_block *sb,
				struct buffer_head **bhs, int nr,
				struct ocfs2_block_check *bc)
{
	int rc = 0;
	struct ocfs2_super *osb = FUNC0(sb);

	if (FUNC2(osb))
		rc = FUNC1(bhs, nr, bc,
						    &osb->osb_ecc_stats);

	return rc;
}