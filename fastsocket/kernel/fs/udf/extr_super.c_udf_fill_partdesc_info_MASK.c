#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_9__ ;
typedef  struct TYPE_19__   TYPE_8__ ;
typedef  struct TYPE_18__   TYPE_7__ ;
typedef  struct TYPE_17__   TYPE_6__ ;
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;
typedef  struct TYPE_11__   TYPE_10__ ;

/* Type definitions */
struct udf_sb_info {struct udf_part_map* s_partmaps; } ;
struct TYPE_20__ {struct udf_bitmap* s_bitmap; TYPE_8__* s_table; } ;
struct TYPE_15__ {struct udf_bitmap* s_bitmap; TYPE_3__* s_table; } ;
struct udf_part_map {int /*<<< orphan*/  s_partition_flags; TYPE_9__ s_fspace; TYPE_4__ s_uspace; void* s_partition_len; void* s_partition_root; int /*<<< orphan*/  s_partition_type; } ;
struct udf_bitmap {void* s_extPosition; void* s_extLength; } ;
struct super_block {int dummy; } ;
struct TYPE_11__ {scalar_t__ extPosition; scalar_t__ extLength; } ;
struct TYPE_18__ {scalar_t__ extPosition; scalar_t__ extLength; } ;
struct TYPE_17__ {scalar_t__ extLength; } ;
struct TYPE_16__ {scalar_t__ extPosition; scalar_t__ extLength; } ;
struct TYPE_13__ {scalar_t__ extPosition; scalar_t__ extLength; } ;
struct partitionHeaderDesc {TYPE_10__ freedSpaceBitmap; TYPE_7__ freedSpaceTable; TYPE_6__ partitionIntegrityTable; TYPE_5__ unallocSpaceBitmap; TYPE_2__ unallocSpaceTable; } ;
struct TYPE_12__ {int /*<<< orphan*/  ident; } ;
struct partitionDesc {scalar_t__ accessType; scalar_t__ partitionContentsUse; TYPE_1__ partitionContents; scalar_t__ partitionStartingLocation; scalar_t__ partitionLength; } ;
struct kernel_lb_addr {void* logicalBlockNum; int partitionReferenceNum; } ;
struct TYPE_19__ {void* i_ino; } ;
struct TYPE_14__ {void* i_ino; } ;

/* Variables and functions */
 int /*<<< orphan*/  PD_ACCESS_TYPE_OVERWRITABLE ; 
 int /*<<< orphan*/  PD_ACCESS_TYPE_READ_ONLY ; 
 int /*<<< orphan*/  PD_ACCESS_TYPE_REWRITABLE ; 
 int /*<<< orphan*/  PD_ACCESS_TYPE_WRITE_ONCE ; 
 int /*<<< orphan*/  PD_PARTITION_CONTENTS_NSR02 ; 
 int /*<<< orphan*/  PD_PARTITION_CONTENTS_NSR03 ; 
 int /*<<< orphan*/  UDF_PART_FLAG_FREED_BITMAP ; 
 int /*<<< orphan*/  UDF_PART_FLAG_FREED_TABLE ; 
 int /*<<< orphan*/  UDF_PART_FLAG_OVERWRITABLE ; 
 int /*<<< orphan*/  UDF_PART_FLAG_READ_ONLY ; 
 int /*<<< orphan*/  UDF_PART_FLAG_REWRITABLE ; 
 int /*<<< orphan*/  UDF_PART_FLAG_UNALLOC_BITMAP ; 
 int /*<<< orphan*/  UDF_PART_FLAG_UNALLOC_TABLE ; 
 int /*<<< orphan*/  UDF_PART_FLAG_WRITE_ONCE ; 
 struct udf_sb_info* FUNC0 (struct super_block*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 void* FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,...) ; 
 void* FUNC5 (struct super_block*,struct kernel_lb_addr*) ; 
 struct udf_bitmap* FUNC6 (struct super_block*,int) ; 

__attribute__((used)) static int FUNC7(struct super_block *sb,
		struct partitionDesc *p, int p_index)
{
	struct udf_part_map *map;
	struct udf_sb_info *sbi = FUNC0(sb);
	struct partitionHeaderDesc *phd;

	map = &sbi->s_partmaps[p_index];

	map->s_partition_len = FUNC2(p->partitionLength); /* blocks */
	map->s_partition_root = FUNC2(p->partitionStartingLocation);

	if (p->accessType == FUNC1(PD_ACCESS_TYPE_READ_ONLY))
		map->s_partition_flags |= UDF_PART_FLAG_READ_ONLY;
	if (p->accessType == FUNC1(PD_ACCESS_TYPE_WRITE_ONCE))
		map->s_partition_flags |= UDF_PART_FLAG_WRITE_ONCE;
	if (p->accessType == FUNC1(PD_ACCESS_TYPE_REWRITABLE))
		map->s_partition_flags |= UDF_PART_FLAG_REWRITABLE;
	if (p->accessType == FUNC1(PD_ACCESS_TYPE_OVERWRITABLE))
		map->s_partition_flags |= UDF_PART_FLAG_OVERWRITABLE;

	FUNC4("Partition (%d type %x) starts at physical %d, "
		  "block length %d\n", p_index,
		  map->s_partition_type, map->s_partition_root,
		  map->s_partition_len);

	if (FUNC3(p->partitionContents.ident, PD_PARTITION_CONTENTS_NSR02) &&
	    FUNC3(p->partitionContents.ident, PD_PARTITION_CONTENTS_NSR03))
		return 0;

	phd = (struct partitionHeaderDesc *)p->partitionContentsUse;
	if (phd->unallocSpaceTable.extLength) {
		struct kernel_lb_addr loc = {
			.logicalBlockNum = FUNC2(
				phd->unallocSpaceTable.extPosition),
			.partitionReferenceNum = p_index,
		};

		map->s_uspace.s_table = FUNC5(sb, &loc);
		if (!map->s_uspace.s_table) {
			FUNC4("cannot load unallocSpaceTable (part %d)\n",
					p_index);
			return 1;
		}
		map->s_partition_flags |= UDF_PART_FLAG_UNALLOC_TABLE;
		FUNC4("unallocSpaceTable (part %d) @ %ld\n",
				p_index, map->s_uspace.s_table->i_ino);
	}

	if (phd->unallocSpaceBitmap.extLength) {
		struct udf_bitmap *bitmap = FUNC6(sb, p_index);
		if (!bitmap)
			return 1;
		map->s_uspace.s_bitmap = bitmap;
		bitmap->s_extLength = FUNC2(
				phd->unallocSpaceBitmap.extLength);
		bitmap->s_extPosition = FUNC2(
				phd->unallocSpaceBitmap.extPosition);
		map->s_partition_flags |= UDF_PART_FLAG_UNALLOC_BITMAP;
		FUNC4("unallocSpaceBitmap (part %d) @ %d\n", p_index,
						bitmap->s_extPosition);
	}

	if (phd->partitionIntegrityTable.extLength)
		FUNC4("partitionIntegrityTable (part %d)\n", p_index);

	if (phd->freedSpaceTable.extLength) {
		struct kernel_lb_addr loc = {
			.logicalBlockNum = FUNC2(
				phd->freedSpaceTable.extPosition),
			.partitionReferenceNum = p_index,
		};

		map->s_fspace.s_table = FUNC5(sb, &loc);
		if (!map->s_fspace.s_table) {
			FUNC4("cannot load freedSpaceTable (part %d)\n",
				p_index);
			return 1;
		}

		map->s_partition_flags |= UDF_PART_FLAG_FREED_TABLE;
		FUNC4("freedSpaceTable (part %d) @ %ld\n",
				p_index, map->s_fspace.s_table->i_ino);
	}

	if (phd->freedSpaceBitmap.extLength) {
		struct udf_bitmap *bitmap = FUNC6(sb, p_index);
		if (!bitmap)
			return 1;
		map->s_fspace.s_bitmap = bitmap;
		bitmap->s_extLength = FUNC2(
				phd->freedSpaceBitmap.extLength);
		bitmap->s_extPosition = FUNC2(
				phd->freedSpaceBitmap.extPosition);
		map->s_partition_flags |= UDF_PART_FLAG_FREED_BITMAP;
		FUNC4("freedSpaceBitmap (part %d) @ %d\n", p_index,
					bitmap->s_extPosition);
	}
	return 0;
}