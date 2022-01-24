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
struct super_block {int /*<<< orphan*/  s_blocksize; } ;
struct ocfs2_block_check {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC1 (void*,int /*<<< orphan*/ ,struct ocfs2_block_check*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

void FUNC3(struct super_block *sb, void *data,
			    struct ocfs2_block_check *bc)
{
	if (FUNC2(FUNC0(sb)))
		FUNC1(data, sb->s_blocksize, bc);
}