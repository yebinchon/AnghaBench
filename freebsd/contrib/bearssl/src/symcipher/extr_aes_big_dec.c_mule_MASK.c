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
 unsigned int FUNC0 (unsigned int) ; 

__attribute__((used)) static unsigned
FUNC1(unsigned x)
{
	unsigned x2, x4;

	x2 = FUNC0(x);
	x4 = FUNC0(x2);
	return x2 ^ x4 ^ FUNC0(x4);
}