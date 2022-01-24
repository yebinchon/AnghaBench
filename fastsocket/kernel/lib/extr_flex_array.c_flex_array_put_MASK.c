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
struct flex_array {unsigned int total_nr_elements; int /*<<< orphan*/  element_size; int /*<<< orphan*/ * parts; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int ENOMEM ; 
 int ENOSPC ; 
 struct flex_array_part* FUNC0 (struct flex_array*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct flex_array*) ; 
 int FUNC2 (struct flex_array*,unsigned int) ; 
 size_t FUNC3 (struct flex_array*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (void*,void*,int /*<<< orphan*/ ) ; 

int FUNC5(struct flex_array *fa, unsigned int element_nr, void *src,
			gfp_t flags)
{
	int part_nr = FUNC2(fa, element_nr);
	struct flex_array_part *part;
	void *dst;

	if (element_nr >= fa->total_nr_elements)
		return -ENOSPC;
	if (FUNC1(fa))
		part = (struct flex_array_part *)&fa->parts[0];
	else {
		part = FUNC0(fa, part_nr, flags);
		if (!part)
			return -ENOMEM;
	}
	dst = &part->elements[FUNC3(fa, element_nr)];
	FUNC4(dst, src, fa->element_size);
	return 0;
}