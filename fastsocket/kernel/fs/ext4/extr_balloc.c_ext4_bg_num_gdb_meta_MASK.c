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
typedef  scalar_t__ ext4_group_t ;

/* Variables and functions */
 unsigned long FUNC0 (struct super_block*) ; 

__attribute__((used)) static unsigned long FUNC1(struct super_block *sb,
					ext4_group_t group)
{
	unsigned long metagroup = group / FUNC0(sb);
	ext4_group_t first = metagroup * FUNC0(sb);
	ext4_group_t last = first + FUNC0(sb) - 1;

	if (group == first || group == first + 1 || group == last)
		return 1;
	return 0;
}