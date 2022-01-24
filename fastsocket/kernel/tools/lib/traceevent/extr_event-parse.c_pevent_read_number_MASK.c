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
struct pevent {int dummy; } ;

/* Variables and functions */
 unsigned long long FUNC0 (struct pevent*,void const*) ; 
 unsigned long long FUNC1 (struct pevent*,void const*) ; 
 unsigned long long FUNC2 (struct pevent*,void const*) ; 

unsigned long long FUNC3(struct pevent *pevent,
				      const void *ptr, int size)
{
	switch (size) {
	case 1:
		return *(unsigned char *)ptr;
	case 2:
		return FUNC0(pevent, ptr);
	case 4:
		return FUNC1(pevent, ptr);
	case 8:
		return FUNC2(pevent, ptr);
	default:
		/* BUG! */
		return 0;
	}
}