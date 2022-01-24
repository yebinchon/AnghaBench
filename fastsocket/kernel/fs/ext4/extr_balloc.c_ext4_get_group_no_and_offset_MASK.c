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
struct ext4_super_block {int /*<<< orphan*/  s_first_data_block; } ;
typedef  int /*<<< orphan*/  ext4_grpblk_t ;
typedef  scalar_t__ ext4_group_t ;
typedef  scalar_t__ ext4_fsblk_t ;
struct TYPE_2__ {struct ext4_super_block* s_es; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct super_block*) ; 
 TYPE_1__* FUNC1 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

void FUNC4(struct super_block *sb, ext4_fsblk_t blocknr,
		ext4_group_t *blockgrpp, ext4_grpblk_t *offsetp)
{
	struct ext4_super_block *es = FUNC1(sb)->s_es;
	ext4_grpblk_t offset;

	blocknr = blocknr - FUNC3(es->s_first_data_block);
	offset = FUNC2(blocknr, FUNC0(sb));
	if (offsetp)
		*offsetp = offset;
	if (blockgrpp)
		*blockgrpp = blocknr;

}