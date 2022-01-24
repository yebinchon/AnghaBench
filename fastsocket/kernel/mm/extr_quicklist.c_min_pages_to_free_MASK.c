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
struct quicklist {long nr_pages; } ;

/* Variables and functions */
 long FUNC0 (unsigned long) ; 
 long FUNC1 (long,long) ; 

__attribute__((used)) static long FUNC2(struct quicklist *q,
	unsigned long min_pages, long max_free)
{
	long pages_to_free;

	pages_to_free = q->nr_pages - FUNC0(min_pages);

	return FUNC1(pages_to_free, max_free);
}