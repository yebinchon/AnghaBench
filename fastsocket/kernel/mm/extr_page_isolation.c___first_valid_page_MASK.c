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
 struct page* FUNC0 (unsigned long) ; 
 scalar_t__ FUNC1 (unsigned long) ; 
 scalar_t__ FUNC2 (int) ; 

__attribute__((used)) static inline struct page *
FUNC3(unsigned long pfn, unsigned long nr_pages)
{
	int i;
	for (i = 0; i < nr_pages; i++)
		if (FUNC1(pfn + i))
			break;
	if (FUNC2(i == nr_pages))
		return NULL;
	return FUNC0(pfn + i);
}