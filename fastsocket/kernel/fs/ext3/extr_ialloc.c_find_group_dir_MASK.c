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
struct inode {int dummy; } ;
struct ext3_group_desc {int /*<<< orphan*/  bg_free_blocks_count; int /*<<< orphan*/  bg_free_inodes_count; } ;
struct TYPE_2__ {int s_groups_count; int /*<<< orphan*/  s_freeinodes_counter; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct super_block*) ; 
 struct ext3_group_desc* FUNC1 (struct super_block*,int,int /*<<< orphan*/ *) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct super_block *sb, struct inode *parent)
{
	int ngroups = FUNC0(sb)->s_groups_count;
	unsigned int freei, avefreei;
	struct ext3_group_desc *desc, *best_desc = NULL;
	int group, best_group = -1;

	freei = FUNC3(&FUNC0(sb)->s_freeinodes_counter);
	avefreei = freei / ngroups;

	for (group = 0; group < ngroups; group++) {
		desc = FUNC1 (sb, group, NULL);
		if (!desc || !desc->bg_free_inodes_count)
			continue;
		if (FUNC2(desc->bg_free_inodes_count) < avefreei)
			continue;
		if (!best_desc ||
		    (FUNC2(desc->bg_free_blocks_count) >
		     FUNC2(best_desc->bg_free_blocks_count))) {
			best_group = group;
			best_desc = desc;
		}
	}
	return best_group;
}