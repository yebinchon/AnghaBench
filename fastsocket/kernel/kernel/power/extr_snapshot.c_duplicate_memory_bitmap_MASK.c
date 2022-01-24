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
struct memory_bitmap {int dummy; } ;

/* Variables and functions */
 unsigned long BM_END_OF_MAP ; 
 unsigned long FUNC0 (struct memory_bitmap*) ; 
 int /*<<< orphan*/  FUNC1 (struct memory_bitmap*) ; 
 int /*<<< orphan*/  FUNC2 (struct memory_bitmap*,unsigned long) ; 

__attribute__((used)) static void
FUNC3(struct memory_bitmap *dst, struct memory_bitmap *src)
{
	unsigned long pfn;

	FUNC1(src);
	pfn = FUNC0(src);
	while (pfn != BM_END_OF_MAP) {
		FUNC2(dst, pfn);
		pfn = FUNC0(src);
	}
}