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
typedef  int uint32_t ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int FUNC1 (int,int,int) ; 
 int FUNC2 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline uint32_t
FUNC3(uint32_t x)
{
	uint32_t k, c;

	k = FUNC2(x, 0);
	c = FUNC0(x, 0xFFFF); x = FUNC1(c, x >> 16, x); k += c << 4;
	c = FUNC0(x, 0x00FF); x = FUNC1(c, x >>  8, x); k += c << 3;
	c = FUNC0(x, 0x000F); x = FUNC1(c, x >>  4, x); k += c << 2;
	c = FUNC0(x, 0x0003); x = FUNC1(c, x >>  2, x); k += c << 1;
	k += FUNC0(x, 0x0001);
	return k;
}