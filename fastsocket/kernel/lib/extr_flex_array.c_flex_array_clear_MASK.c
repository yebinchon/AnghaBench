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
struct flex_array_part {int /*<<< orphan*/ * elements; } ;
struct flex_array {unsigned int total_nr_elements; int /*<<< orphan*/  element_size; struct flex_array_part** parts; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOSPC ; 
 int /*<<< orphan*/  FLEX_ARRAY_FREE ; 
 scalar_t__ FUNC0 (struct flex_array*) ; 
 int FUNC1 (struct flex_array*,unsigned int) ; 
 size_t FUNC2 (struct flex_array*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC4(struct flex_array *fa, unsigned int element_nr)
{
	int part_nr = FUNC1(fa, element_nr);
	struct flex_array_part *part;
	void *dst;

	if (element_nr >= fa->total_nr_elements)
		return -ENOSPC;
	if (FUNC0(fa))
		part = (struct flex_array_part *)&fa->parts[0];
	else {
		part = fa->parts[part_nr];
		if (!part)
			return -EINVAL;
	}
	dst = &part->elements[FUNC2(fa, element_nr)];
	FUNC3(dst, FLEX_ARRAY_FREE, fa->element_size);
	return 0;
}