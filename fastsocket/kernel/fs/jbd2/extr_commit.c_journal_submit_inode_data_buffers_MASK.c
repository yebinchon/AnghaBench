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
struct writeback_control {int nr_to_write; int /*<<< orphan*/  range_end; int /*<<< orphan*/  range_start; int /*<<< orphan*/  sync_mode; } ;
struct address_space {int nrpages; int /*<<< orphan*/  host; } ;

/* Variables and functions */
 int /*<<< orphan*/  WB_SYNC_ALL ; 
 int FUNC0 (struct address_space*,struct writeback_control*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct address_space *mapping)
{
	int ret;
	struct writeback_control wbc = {
		.sync_mode =  WB_SYNC_ALL,
		.nr_to_write = mapping->nrpages * 2,
		.range_start = 0,
		.range_end = FUNC1(mapping->host),
	};

	ret = FUNC0(mapping, &wbc);
	return ret;
}