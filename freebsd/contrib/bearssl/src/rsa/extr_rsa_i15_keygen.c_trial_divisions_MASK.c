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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int uint16_t ;

/* Variables and functions */
 int /*<<< orphan*/  SMALL_PRIMES ; 
 int /*<<< orphan*/  FUNC0 (int*,int /*<<< orphan*/ ,int,int const*) ; 
 int /*<<< orphan*/  FUNC1 (int*,int*,int const*,int,int*) ; 
 int FUNC2 (int const) ; 

__attribute__((used)) static uint32_t
FUNC3(const uint16_t *x, uint16_t *t)
{
	uint16_t *y;
	uint16_t x0i;

	y = t;
	t += 1 + ((x[0] + 15) >> 4);
	x0i = FUNC2(x[1]);
	FUNC0(y, SMALL_PRIMES, sizeof SMALL_PRIMES, x);
	return FUNC1(y, y, x, x0i, t);
}