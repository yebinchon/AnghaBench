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
struct ext4_group_desc {int dummy; } ;
typedef  unsigned int ext4_group_t ;
struct TYPE_2__ {int /*<<< orphan*/  s_freeinodes_counter; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct super_block*) ; 
 scalar_t__ FUNC1 (struct super_block*,struct ext4_group_desc*) ; 
 unsigned int FUNC2 (struct super_block*,struct ext4_group_desc*) ; 
 struct ext4_group_desc* FUNC3 (struct super_block*,unsigned int,int /*<<< orphan*/ *) ; 
 unsigned int FUNC4 (struct super_block*) ; 
 unsigned int FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct super_block *sb, struct inode *parent,
				ext4_group_t *best_group)
{
	ext4_group_t ngroups = FUNC4(sb);
	unsigned int freei, avefreei;
	struct ext4_group_desc *desc, *best_desc = NULL;
	ext4_group_t group;
	int ret = -1;

	freei = FUNC5(&FUNC0(sb)->s_freeinodes_counter);
	avefreei = freei / ngroups;

	for (group = 0; group < ngroups; group++) {
		desc = FUNC3(sb, group, NULL);
		if (!desc || !FUNC2(sb, desc))
			continue;
		if (FUNC2(sb, desc) < avefreei)
			continue;
		if (!best_desc ||
		    (FUNC1(sb, desc) >
		     FUNC1(sb, best_desc))) {
			*best_group = group;
			best_desc = desc;
			ret = 0;
		}
	}
	return ret;
}