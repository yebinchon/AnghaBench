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
typedef  int u32 ;
struct scatterlist {int /*<<< orphan*/  length; } ;
struct rd_dev_sg_table {int rd_sg_count; int page_start_offset; int page_end_offset; struct scatterlist* sg_table; } ;
struct rd_dev {scalar_t__ rd_page_count; int sg_table_count; int /*<<< orphan*/  rd_dev_id; TYPE_1__* rd_host; struct rd_dev_sg_table* sg_table_array; } ;
struct page {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  rd_host_id; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int RD_MAX_ALLOCATION_SIZE ; 
 struct page* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  FUNC4 (struct scatterlist*,struct page*) ; 
 int /*<<< orphan*/  FUNC5 (struct scatterlist*,int) ; 

__attribute__((used)) static int FUNC6(struct rd_dev *rd_dev)
{
	u32 i = 0, j, page_offset = 0, sg_per_table, sg_tables, total_sg_needed;
	u32 max_sg_per_table = (RD_MAX_ALLOCATION_SIZE /
				sizeof(struct scatterlist));
	struct rd_dev_sg_table *sg_table;
	struct page *pg;
	struct scatterlist *sg;

	if (rd_dev->rd_page_count <= 0) {
		FUNC3("Illegal page count: %u for Ramdisk device\n",
			rd_dev->rd_page_count);
		return -EINVAL;
	}
	total_sg_needed = rd_dev->rd_page_count;

	sg_tables = (total_sg_needed / max_sg_per_table) + 1;

	sg_table = FUNC1(sg_tables * sizeof(struct rd_dev_sg_table), GFP_KERNEL);
	if (!sg_table) {
		FUNC3("Unable to allocate memory for Ramdisk"
			" scatterlist tables\n");
		return -ENOMEM;
	}

	rd_dev->sg_table_array = sg_table;
	rd_dev->sg_table_count = sg_tables;

	while (total_sg_needed) {
		sg_per_table = (total_sg_needed > max_sg_per_table) ?
			max_sg_per_table : total_sg_needed;

		sg = FUNC1(sg_per_table * sizeof(struct scatterlist),
				GFP_KERNEL);
		if (!sg) {
			FUNC3("Unable to allocate scatterlist array"
				" for struct rd_dev\n");
			return -ENOMEM;
		}

		FUNC5(sg, sg_per_table);

		sg_table[i].sg_table = sg;
		sg_table[i].rd_sg_count = sg_per_table;
		sg_table[i].page_start_offset = page_offset;
		sg_table[i++].page_end_offset = (page_offset + sg_per_table)
						- 1;

		for (j = 0; j < sg_per_table; j++) {
			pg = FUNC0(GFP_KERNEL, 0);
			if (!pg) {
				FUNC3("Unable to allocate scatterlist"
					" pages for struct rd_dev_sg_table\n");
				return -ENOMEM;
			}
			FUNC4(&sg[j], pg);
			sg[j].length = PAGE_SIZE;
		}

		page_offset += sg_per_table;
		total_sg_needed -= sg_per_table;
	}

	FUNC2("CORE_RD[%u] - Built Ramdisk Device ID: %u space of"
		" %u pages in %u tables\n", rd_dev->rd_host->rd_host_id,
		rd_dev->rd_dev_id, rd_dev->rd_page_count,
		rd_dev->sg_table_count);

	return 0;
}