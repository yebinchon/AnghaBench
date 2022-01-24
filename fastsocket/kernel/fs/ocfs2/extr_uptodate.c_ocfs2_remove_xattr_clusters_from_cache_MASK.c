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
typedef  unsigned int u32 ;
struct super_block {int dummy; } ;
struct ocfs2_caching_info {int dummy; } ;
typedef  int /*<<< orphan*/  sector_t ;

/* Variables and functions */
 unsigned int FUNC0 (struct super_block*,int) ; 
 struct super_block* FUNC1 (struct ocfs2_caching_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct ocfs2_caching_info*,int /*<<< orphan*/ ) ; 

void FUNC3(struct ocfs2_caching_info *ci,
					    sector_t block,
					    u32 c_len)
{
	struct super_block *sb = FUNC1(ci);
	unsigned int i, b_len = FUNC0(sb, 1) * c_len;

	for (i = 0; i < b_len; i++, block++)
		FUNC2(ci, block);
}