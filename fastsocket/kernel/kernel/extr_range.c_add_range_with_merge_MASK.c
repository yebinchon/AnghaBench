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
typedef  scalar_t__ u64 ;
struct range {scalar_t__ end; scalar_t__ start; } ;

/* Variables and functions */
 int FUNC0 (struct range*,int,int,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__,scalar_t__) ; 

int FUNC3(struct range *range, int az, int nr_range,
		     u64 start, u64 end)
{
	int i;

	if (start > end)
		return nr_range;

	/* Try to merge it with old one: */
	for (i = 0; i < nr_range; i++) {
		u64 final_start, final_end;
		u64 common_start, common_end;

		if (!range[i].end)
			continue;

		common_start = FUNC1(range[i].start, start);
		common_end = FUNC2(range[i].end, end);
		if (common_start > common_end + 1)
			continue;

		final_start = FUNC2(range[i].start, start);
		final_end = FUNC1(range[i].end, end);

		range[i].start = final_start;
		range[i].end =  final_end;
		return nr_range;
	}

	/* Need to add it: */
	return FUNC0(range, az, nr_range, start, end);
}