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

/* Variables and functions */
 unsigned long PAGES_PER_WAITQUEUE ; 
 unsigned long FUNC0 (unsigned long,unsigned long) ; 
 unsigned long FUNC1 (unsigned long,unsigned long) ; 

__attribute__((used)) static inline unsigned long FUNC2(unsigned long pages)
{
	unsigned long size = 1;

	pages /= PAGES_PER_WAITQUEUE;

	while (size < pages)
		size <<= 1;

	/*
	 * Once we have dozens or even hundreds of threads sleeping
	 * on IO we've got bigger problems than wait queue collision.
	 * Limit the size of the wait table to a reasonable size.
	 */
	size = FUNC1(size, 4096UL);

	return FUNC0(size, 4UL);
}