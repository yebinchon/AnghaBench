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
typedef  int uint8_t ;

/* Variables and functions */
 int FUNC0 (int,int) ; 

__attribute__((used)) static uint8_t FUNC1(uint8_t a, int b)
{
	uint8_t v = 1;

	b %= 255;
	if (b < 0)
		b += 255;

	while (b) {
		if (b & 1)
			v = FUNC0(v, a);
		a = FUNC0(a, a);
		b >>= 1;
	}

	return v;
}