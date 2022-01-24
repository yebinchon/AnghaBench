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
struct buffer_head {scalar_t__ b_blocknr; scalar_t__ b_data; } ;
typedef  unsigned int ext4_group_t ;
typedef  scalar_t__ ext4_fsblk_t ;
typedef  int /*<<< orphan*/  __le32 ;
struct TYPE_2__ {unsigned int s_groups_count; } ;

/* Variables and functions */
 int EFBIG ; 
 int EINVAL ; 
 int FUNC0 (struct super_block*) ; 
 unsigned int FUNC1 (struct super_block*) ; 
 TYPE_1__* FUNC2 (struct super_block*) ; 
 unsigned int FUNC3 (struct super_block*,unsigned int*,unsigned int*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC4 (struct super_block*,char*,scalar_t__ const,unsigned int,scalar_t__ const) ; 
 scalar_t__ const FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct super_block *sb,
			       struct buffer_head *primary)
{
	const ext4_fsblk_t blk = primary->b_blocknr;
	const ext4_group_t end = FUNC2(sb)->s_groups_count;
	unsigned three = 1;
	unsigned five = 5;
	unsigned seven = 7;
	unsigned grp;
	__le32 *p = (__le32 *)primary->b_data;
	int gdbackups = 0;

	while ((grp = FUNC3(sb, &three, &five, &seven)) < end) {
		if (FUNC5(*p++) !=
		    grp * FUNC1(sb) + blk){
			FUNC4(sb, "reserved GDT %llu"
				     " missing grp %d (%llu)",
				     blk, grp,
				     grp *
				     (ext4_fsblk_t)FUNC1(sb) +
				     blk);
			return -EINVAL;
		}
		if (++gdbackups > FUNC0(sb))
			return -EFBIG;
	}

	return gdbackups;
}