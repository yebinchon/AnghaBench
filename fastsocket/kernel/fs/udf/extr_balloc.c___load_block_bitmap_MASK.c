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
struct udf_bitmap {int s_nr_groups; scalar_t__* s_block_bitmap; } ;
struct super_block {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct super_block*,struct udf_bitmap*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (char*,unsigned int,int) ; 

__attribute__((used)) static int FUNC2(struct super_block *sb,
			       struct udf_bitmap *bitmap,
			       unsigned int block_group)
{
	int retval = 0;
	int nr_groups = bitmap->s_nr_groups;

	if (block_group >= nr_groups) {
		FUNC1("block_group (%d) > nr_groups (%d)\n", block_group,
			  nr_groups);
	}

	if (bitmap->s_block_bitmap[block_group]) {
		return block_group;
	} else {
		retval = FUNC0(sb, bitmap, block_group,
					   block_group);
		if (retval < 0)
			return retval;
		return block_group;
	}
}