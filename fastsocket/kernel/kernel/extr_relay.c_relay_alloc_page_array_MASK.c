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
struct page {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 size_t PAGE_SIZE ; 
 struct page** FUNC0 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct page**,int /*<<< orphan*/ ,size_t) ; 
 struct page** FUNC2 (size_t) ; 

__attribute__((used)) static struct page **FUNC3(unsigned int n_pages)
{
	struct page **array;
	size_t pa_size = n_pages * sizeof(struct page *);

	if (pa_size > PAGE_SIZE) {
		array = FUNC2(pa_size);
		if (array)
			FUNC1(array, 0, pa_size);
	} else {
		array = FUNC0(pa_size, GFP_KERNEL);
	}
	return array;
}