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
struct flex_array {int element_size; unsigned int total_nr_elements; int /*<<< orphan*/ * parts; } ;
typedef  int gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  FLEX_ARRAY_BASE_BYTES_LEFT ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FLEX_ARRAY_FREE ; 
 int FLEX_ARRAY_NR_BASE_PTRS ; 
 int __GFP_ZERO ; 
 scalar_t__ FUNC1 (struct flex_array*) ; 
 struct flex_array* FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

struct flex_array *FUNC4(int element_size, unsigned int total,
					gfp_t flags)
{
	struct flex_array *ret;
	int max_size = FLEX_ARRAY_NR_BASE_PTRS *
				FUNC0(element_size);

	/* max_size will end up 0 if element_size > PAGE_SIZE */
	if (total > max_size)
		return NULL;
	ret = FUNC2(sizeof(struct flex_array), flags);
	if (!ret)
		return NULL;
	ret->element_size = element_size;
	ret->total_nr_elements = total;
	if (FUNC1(ret) && !(flags & __GFP_ZERO))
		FUNC3(&ret->parts[0], FLEX_ARRAY_FREE,
						FLEX_ARRAY_BASE_BYTES_LEFT);
	return ret;
}