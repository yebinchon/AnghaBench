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
struct super_block {int dummy; } ;
struct orlov_stats {void* used_dirs; void* free_blocks; void* free_inodes; } ;
struct flex_groups {int /*<<< orphan*/  used_dirs; int /*<<< orphan*/  free_blocks; int /*<<< orphan*/  free_inodes; } ;
struct ext4_group_desc {int dummy; } ;
typedef  size_t ext4_group_t ;
struct TYPE_2__ {struct flex_groups* s_flex_groups; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct super_block*) ; 
 void* FUNC1 (int /*<<< orphan*/ *) ; 
 void* FUNC2 (struct super_block*,struct ext4_group_desc*) ; 
 void* FUNC3 (struct super_block*,struct ext4_group_desc*) ; 
 struct ext4_group_desc* FUNC4 (struct super_block*,size_t,int /*<<< orphan*/ *) ; 
 void* FUNC5 (struct super_block*,struct ext4_group_desc*) ; 

void FUNC6(struct super_block *sb, ext4_group_t g,
		       int flex_size, struct orlov_stats *stats)
{
	struct ext4_group_desc *desc;
	struct flex_groups *flex_group = FUNC0(sb)->s_flex_groups;

	if (flex_size > 1) {
		stats->free_inodes = FUNC1(&flex_group[g].free_inodes);
		stats->free_blocks = FUNC1(&flex_group[g].free_blocks);
		stats->used_dirs = FUNC1(&flex_group[g].used_dirs);
		return;
	}

	desc = FUNC4(sb, g, NULL);
	if (desc) {
		stats->free_inodes = FUNC3(sb, desc);
		stats->free_blocks = FUNC2(sb, desc);
		stats->used_dirs = FUNC5(sb, desc);
	} else {
		stats->free_inodes = 0;
		stats->free_blocks = 0;
		stats->used_dirs = 0;
	}
}