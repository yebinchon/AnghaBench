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
struct sep_device {scalar_t__ out_num_pages; scalar_t__ in_num_pages; scalar_t__ out_page_array; scalar_t__ in_page_array; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__,int) ; 

__attribute__((used)) static int FUNC2(struct sep_device *sep)
{
	FUNC0("SEP Driver:--------> sep_free_dma_table_data_handler start\n");

	/* free input pages array */
	FUNC1(sep->in_page_array, sep->in_num_pages, 0);

	/* free output pages array if needed */
	if (sep->out_page_array)
		FUNC1(sep->out_page_array, sep->out_num_pages, 1);

	/* reset all the values */
	sep->in_page_array = 0;
	sep->out_page_array = 0;
	sep->in_num_pages = 0;
	sep->out_num_pages = 0;
	FUNC0("SEP Driver:<-------- sep_free_dma_table_data_handler end\n");
	return 0;
}