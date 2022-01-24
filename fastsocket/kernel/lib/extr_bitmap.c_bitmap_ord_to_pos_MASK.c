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
 int FUNC0 (unsigned long const*,int) ; 
 int FUNC1 (unsigned long const*,int,int) ; 

__attribute__((used)) static int FUNC2(const unsigned long *buf, int ord, int bits)
{
	int pos = 0;

	if (ord >= 0 && ord < bits) {
		int i;

		for (i = FUNC0(buf, bits);
		     i < bits && ord > 0;
		     i = FUNC1(buf, bits, i + 1))
	     		ord--;
		if (i < bits && ord == 0)
			pos = i;
	}

	return pos;
}