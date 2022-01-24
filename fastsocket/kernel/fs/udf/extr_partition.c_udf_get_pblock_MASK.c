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
typedef  int uint32_t ;
typedef  size_t uint16_t ;
struct udf_sb_info {size_t s_partitions; struct udf_part_map* s_partmaps; } ;
struct udf_part_map {int (* s_partition_func ) (struct super_block*,int,size_t,int) ;int s_partition_root; } ;
struct super_block {int dummy; } ;

/* Variables and functions */
 struct udf_sb_info* FUNC0 (struct super_block*) ; 
 int FUNC1 (struct super_block*,int,size_t,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,size_t,int) ; 

uint32_t FUNC3(struct super_block *sb, uint32_t block,
			uint16_t partition, uint32_t offset)
{
	struct udf_sb_info *sbi = FUNC0(sb);
	struct udf_part_map *map;
	if (partition >= sbi->s_partitions) {
		FUNC2("block=%d, partition=%d, offset=%d: "
			  "invalid partition\n", block, partition, offset);
		return 0xFFFFFFFF;
	}
	map = &sbi->s_partmaps[partition];
	if (map->s_partition_func)
		return map->s_partition_func(sb, block, partition, offset);
	else
		return map->s_partition_root + block + offset;
}