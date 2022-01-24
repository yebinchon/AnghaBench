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
struct group_info {scalar_t__* blocks; scalar_t__ small_block; int nblocks; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (struct group_info*) ; 

void FUNC2(struct group_info *group_info)
{
	if (group_info->blocks[0] != group_info->small_block) {
		int i;
		for (i = 0; i < group_info->nblocks; i++)
			FUNC0((unsigned long)group_info->blocks[i]);
	}
	FUNC1(group_info);
}