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
typedef  int uint32_t ;
typedef  size_t uint16_t ;
struct udf_part_map {int /*<<< orphan*/  s_partition_num; } ;
struct super_block {int dummy; } ;
struct kernel_lb_addr {int /*<<< orphan*/  logicalBlockNum; } ;
struct inode {struct super_block* i_sb; } ;
struct extent_position {int /*<<< orphan*/  bh; } ;
typedef  int sector_t ;
struct TYPE_2__ {struct udf_part_map* s_partmaps; } ;

/* Variables and functions */
 int EXT_RECORDED_ALLOCATED ; 
 TYPE_1__* FUNC0 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct inode*,int,struct extent_position*,struct kernel_lb_addr*,int*,int*) ; 
 int FUNC3 (struct super_block*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static uint32_t FUNC4(struct inode *inode, uint32_t block,
					uint16_t partition, uint32_t offset)
{
	struct super_block *sb = inode->i_sb;
	struct udf_part_map *map;
	struct kernel_lb_addr eloc;
	uint32_t elen;
	sector_t ext_offset;
	struct extent_position epos = {};
	uint32_t phyblock;

	if (FUNC2(inode, block, &epos, &eloc, &elen, &ext_offset) !=
						(EXT_RECORDED_ALLOCATED >> 30))
		phyblock = 0xFFFFFFFF;
	else {
		map = &FUNC0(sb)->s_partmaps[partition];
		/* map to sparable/physical partition desc */
		phyblock = FUNC3(sb, eloc.logicalBlockNum,
			map->s_partition_num, ext_offset + offset);
	}

	FUNC1(epos.bh);
	return phyblock;
}