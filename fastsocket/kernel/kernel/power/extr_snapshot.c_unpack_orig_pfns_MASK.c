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
 int EFAULT ; 
 int PAGE_SIZE ; 
 scalar_t__ FUNC0 (struct memory_bitmap*,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (struct memory_bitmap*,unsigned long) ; 
 scalar_t__ FUNC2 (int) ; 

__attribute__((used)) static int FUNC3(unsigned long *buf, struct memory_bitmap *bm)
{
	int j;

	for (j = 0; j < PAGE_SIZE / sizeof(long); j++) {
		if (FUNC2(buf[j] == BM_END_OF_MAP))
			break;

		if (FUNC0(bm, buf[j]))
			FUNC1(bm, buf[j]);
		else
			return -EFAULT;
	}

	return 0;
}