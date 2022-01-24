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
struct sep_lli_entry_t {unsigned long physical_address; unsigned long block_size; } ;
struct sep_device {unsigned long in_num_pages; long shared_bus; void* shared_addr; int /*<<< orphan*/  in_page_array; } ;

/* Variables and functions */
 int SEP_DRIVER_ENTRIES_PER_TABLE_IN_SEP ; 
 long SEP_DRIVER_SYNCHRONIC_DMA_TABLES_AREA_OFFSET_IN_BYTES ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (struct sep_lli_entry_t*) ; 
 int /*<<< orphan*/  FUNC3 (struct sep_lli_entry_t*,struct sep_lli_entry_t*,unsigned long*,unsigned long*,unsigned long) ; 
 unsigned long FUNC4 (struct sep_lli_entry_t*,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (struct sep_device*,struct sep_lli_entry_t*,unsigned long,unsigned long) ; 
 unsigned long FUNC6 (struct sep_device*,unsigned long,unsigned long,unsigned long*,struct sep_lli_entry_t**,int /*<<< orphan*/ *) ; 
 unsigned long FUNC7 (struct sep_device*,unsigned long,unsigned long,unsigned long*,struct sep_lli_entry_t**,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (struct sep_device*,unsigned long) ; 
 void* FUNC9 (struct sep_device*,struct sep_lli_entry_t*) ; 

__attribute__((used)) static int FUNC10(struct sep_device *sep,
				unsigned long app_virt_addr,
				unsigned long data_size,
				unsigned long block_size,
				unsigned long *lli_table_ptr,
				unsigned long *num_entries_ptr,
				unsigned long *table_data_size_ptr,
				bool isKernelVirtualAddress)
{
	/* pointer to the info entry of the table - the last entry */
	struct sep_lli_entry_t *info_entry_ptr;
	/* array of pointers ot page */
	struct sep_lli_entry_t *lli_array_ptr;
	/* points to the first entry to be processed in the lli_in_array */
	unsigned long current_entry;
	/* num entries in the virtual buffer */
	unsigned long sep_lli_entries;
	/* lli table pointer */
	struct sep_lli_entry_t *in_lli_table_ptr;
	/* the total data in one table */
	unsigned long table_data_size;
	/* number of entries in lli table */
	unsigned long num_entries_in_table;
	/* next table address */
	void *lli_table_alloc_addr;
	unsigned long result;

	FUNC0("SEP Driver:--------> sep_prepare_input_dma_table start\n");

	FUNC1("SEP Driver:data_size is %lu\n", data_size);
	FUNC1("SEP Driver:block_size is %lu\n", block_size);

	/* initialize the pages pointers */
	sep->in_page_array = 0;
	sep->in_num_pages = 0;

	if (data_size == 0) {
		/* special case  - created 2 entries table with zero data */
		in_lli_table_ptr = (struct sep_lli_entry_t *) (sep->shared_addr + SEP_DRIVER_SYNCHRONIC_DMA_TABLES_AREA_OFFSET_IN_BYTES);
		/* FIXME: Should the entry below not be for _bus */
		in_lli_table_ptr->physical_address = (unsigned long)sep->shared_addr + SEP_DRIVER_SYNCHRONIC_DMA_TABLES_AREA_OFFSET_IN_BYTES;
		in_lli_table_ptr->block_size = 0;

		in_lli_table_ptr++;
		in_lli_table_ptr->physical_address = 0xFFFFFFFF;
		in_lli_table_ptr->block_size = 0;

		*lli_table_ptr = sep->shared_bus + SEP_DRIVER_SYNCHRONIC_DMA_TABLES_AREA_OFFSET_IN_BYTES;
		*num_entries_ptr = 2;
		*table_data_size_ptr = 0;

		goto end_function;
	}

	/* check if the pages are in Kernel Virtual Address layout */
	if (isKernelVirtualAddress == true)
		/* lock the pages of the kernel buffer and translate them to pages */
		result = FUNC6(sep, app_virt_addr, data_size, &sep->in_num_pages, &lli_array_ptr, &sep->in_page_array);
	else
		/* lock the pages of the user buffer and translate them to pages */
		result = FUNC7(sep, app_virt_addr, data_size, &sep->in_num_pages, &lli_array_ptr, &sep->in_page_array);

	if (result)
		return result;

	FUNC1("SEP Driver:output sep->in_num_pages is %lu\n", sep->in_num_pages);

	current_entry = 0;
	info_entry_ptr = 0;
	sep_lli_entries = sep->in_num_pages;

	/* initiate to point after the message area */
	lli_table_alloc_addr = sep->shared_addr + SEP_DRIVER_SYNCHRONIC_DMA_TABLES_AREA_OFFSET_IN_BYTES;

	/* loop till all the entries in in array are not processed */
	while (current_entry < sep_lli_entries) {
		/* set the new input and output tables */
		in_lli_table_ptr = (struct sep_lli_entry_t *) lli_table_alloc_addr;

		lli_table_alloc_addr += sizeof(struct sep_lli_entry_t) * SEP_DRIVER_ENTRIES_PER_TABLE_IN_SEP;

		/* calculate the maximum size of data for input table */
		table_data_size = FUNC4(&lli_array_ptr[current_entry], (sep_lli_entries - current_entry));

		/* now calculate the table size so that it will be module block size */
		table_data_size = (table_data_size / block_size) * block_size;

		FUNC1("SEP Driver:output table_data_size is %lu\n", table_data_size);

		/* construct input lli table */
		FUNC3(&lli_array_ptr[current_entry], in_lli_table_ptr, &current_entry, &num_entries_in_table, table_data_size);

		if (info_entry_ptr == 0) {
			/* set the output parameters to physical addresses */
			*lli_table_ptr = FUNC9(sep, in_lli_table_ptr);
			*num_entries_ptr = num_entries_in_table;
			*table_data_size_ptr = table_data_size;

			FUNC1("SEP Driver:output lli_table_in_ptr is %08lx\n", *lli_table_ptr);
		} else {
			/* update the info entry of the previous in table */
			info_entry_ptr->physical_address = FUNC9(sep, in_lli_table_ptr);
			info_entry_ptr->block_size = ((num_entries_in_table) << 24) | (table_data_size);
		}

		/* save the pointer to the info entry of the current tables */
		info_entry_ptr = in_lli_table_ptr + num_entries_in_table - 1;
	}

	/* print input tables */
	FUNC5(sep, (struct sep_lli_entry_t *)
				   FUNC8(sep, *lli_table_ptr), *num_entries_ptr, *table_data_size_ptr);

	/* the array of the pages */
	FUNC2(lli_array_ptr);
end_function:
	FUNC0("SEP Driver:<-------- sep_prepare_input_dma_table end\n");
	return 0;

}