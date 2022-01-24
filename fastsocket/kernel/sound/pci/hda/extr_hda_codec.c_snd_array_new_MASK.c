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
struct snd_array {int elem_size; int used; int alloced; int alloc_align; void* list; } ;

/* Variables and functions */
 int GFP_KERNEL ; 
 int __GFP_ZERO ; 
 void* FUNC0 (void*,int,int) ; 
 scalar_t__ FUNC1 (int) ; 
 void* FUNC2 (struct snd_array*,int /*<<< orphan*/ ) ; 

void *FUNC3(struct snd_array *array)
{
	if (FUNC1(!array->elem_size))
		return NULL;
	if (array->used >= array->alloced) {
		int num = array->alloced + array->alloc_align;
		int size = (num + 1) * array->elem_size;
		void *nlist;
		if (FUNC1(num >= 4096))
			return NULL;
		nlist = FUNC0(array->list, size, GFP_KERNEL | __GFP_ZERO);
		if (!nlist)
			return NULL;
		array->list = nlist;
		array->alloced = num;
	}
	return FUNC2(array, array->used++);
}