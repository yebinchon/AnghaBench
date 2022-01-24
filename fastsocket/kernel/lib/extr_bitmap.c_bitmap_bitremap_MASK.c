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
 int FUNC0 (unsigned long const*,int,int) ; 
 int FUNC1 (unsigned long const*,int,int) ; 
 int FUNC2 (unsigned long const*,int) ; 

int FUNC3(int oldbit, const unsigned long *old,
				const unsigned long *new, int bits)
{
	int w = FUNC2(new, bits);
	int n = FUNC1(old, oldbit, bits);
	if (n < 0 || w == 0)
		return oldbit;
	else
		return FUNC0(new, n % w, bits);
}