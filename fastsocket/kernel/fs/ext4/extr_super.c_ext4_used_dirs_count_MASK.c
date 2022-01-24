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
struct ext4_group_desc {int /*<<< orphan*/  bg_used_dirs_count_hi; int /*<<< orphan*/  bg_used_dirs_count_lo; } ;
typedef  int __u32 ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct super_block*) ; 
 scalar_t__ EXT4_MIN_DESC_SIZE_64BIT ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 

__u32 FUNC2(struct super_block *sb,
			      struct ext4_group_desc *bg)
{
	return FUNC1(bg->bg_used_dirs_count_lo) |
		(FUNC0(sb) >= EXT4_MIN_DESC_SIZE_64BIT ?
		 (__u32)FUNC1(bg->bg_used_dirs_count_hi) << 16 : 0);
}