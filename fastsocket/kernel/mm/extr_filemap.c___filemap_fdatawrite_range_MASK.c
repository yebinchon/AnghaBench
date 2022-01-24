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
struct writeback_control {int sync_mode; int /*<<< orphan*/  range_end; int /*<<< orphan*/  range_start; int /*<<< orphan*/  nr_to_write; } ;
struct address_space {int dummy; } ;
typedef  int /*<<< orphan*/  loff_t ;

/* Variables and functions */
 int /*<<< orphan*/  LONG_MAX ; 
 int FUNC0 (struct address_space*,struct writeback_control*) ; 
 int /*<<< orphan*/  FUNC1 (struct address_space*) ; 

int FUNC2(struct address_space *mapping, loff_t start,
				loff_t end, int sync_mode)
{
	int ret;
	struct writeback_control wbc = {
		.sync_mode = sync_mode,
		.nr_to_write = LONG_MAX,
		.range_start = start,
		.range_end = end,
	};

	if (!FUNC1(mapping))
		return 0;

	ret = FUNC0(mapping, &wbc);
	return ret;
}