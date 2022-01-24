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
typedef  int /*<<< orphan*/  u32 ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 void* FUNC3 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dma_debug_dent ; 
 int /*<<< orphan*/  error_count ; 
 void* error_count_dent ; 
 int /*<<< orphan*/  filter_dent ; 
 int /*<<< orphan*/  filter_fops ; 
 int /*<<< orphan*/  global_disable ; 
 int /*<<< orphan*/  global_disable_dent ; 
 int /*<<< orphan*/  min_free_entries ; 
 void* min_free_entries_dent ; 
 int /*<<< orphan*/  num_free_entries ; 
 void* num_free_entries_dent ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  show_all_errors ; 
 void* show_all_errors_dent ; 
 int /*<<< orphan*/  show_num_errors ; 
 void* show_num_errors_dent ; 

__attribute__((used)) static int FUNC6(void)
{
	dma_debug_dent = FUNC1("dma-api", NULL);
	if (!dma_debug_dent) {
		FUNC5("DMA-API: can not create debugfs directory\n");
		return -ENOMEM;
	}

	global_disable_dent = FUNC0("disabled", 0444,
			dma_debug_dent,
			(u32 *)&global_disable);
	if (!global_disable_dent)
		goto out_err;

	error_count_dent = FUNC3("error_count", 0444,
			dma_debug_dent, &error_count);
	if (!error_count_dent)
		goto out_err;

	show_all_errors_dent = FUNC3("all_errors", 0644,
			dma_debug_dent,
			&show_all_errors);
	if (!show_all_errors_dent)
		goto out_err;

	show_num_errors_dent = FUNC3("num_errors", 0644,
			dma_debug_dent,
			&show_num_errors);
	if (!show_num_errors_dent)
		goto out_err;

	num_free_entries_dent = FUNC3("num_free_entries", 0444,
			dma_debug_dent,
			&num_free_entries);
	if (!num_free_entries_dent)
		goto out_err;

	min_free_entries_dent = FUNC3("min_free_entries", 0444,
			dma_debug_dent,
			&min_free_entries);
	if (!min_free_entries_dent)
		goto out_err;

	filter_dent = FUNC2("driver_filter", 0644,
					  dma_debug_dent, NULL, &filter_fops);
	if (!filter_dent)
		goto out_err;

	return 0;

out_err:
	FUNC4(dma_debug_dent);

	return -ENOMEM;
}