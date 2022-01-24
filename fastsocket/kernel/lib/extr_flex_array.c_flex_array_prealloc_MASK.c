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
struct flex_array_part {int dummy; } ;
struct flex_array {unsigned int total_nr_elements; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int ENOMEM ; 
 int ENOSPC ; 
 struct flex_array_part* FUNC0 (struct flex_array*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct flex_array*) ; 
 int FUNC2 (struct flex_array*,unsigned int) ; 

int FUNC3(struct flex_array *fa, unsigned int start,
			unsigned int nr_elements, gfp_t flags)
{
	int start_part;
	int end_part;
	int part_nr;
	unsigned int end;
	struct flex_array_part *part;

	if (!start && !nr_elements)
		return 0;
	if (start >= fa->total_nr_elements)
		return -ENOSPC;
	if (!nr_elements)
		return 0;

	end = start + nr_elements - 1;

	if (end >= fa->total_nr_elements)
		return -ENOSPC;
	if (FUNC1(fa))
		return 0;
	start_part = FUNC2(fa, start);
	end_part = FUNC2(fa, end);
	for (part_nr = start_part; part_nr <= end_part; part_nr++) {
		part = FUNC0(fa, part_nr, flags);
		if (!part)
			return -ENOMEM;
	}
	return 0;
}