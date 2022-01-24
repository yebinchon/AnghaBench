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
typedef  int uint64_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int*,int*,int*) ; 
 scalar_t__ FUNC2 (int*,int*) ; 
 int FUNC3 (int*) ; 
 int /*<<< orphan*/  FUNC4 (int*,int) ; 
 int /*<<< orphan*/  FUNC5 (int*,int*,int*) ; 

__attribute__((used)) static uint64_t
FUNC6(uint64_t *square)
{
	uint64_t result[2] = { 0, 0 };
	uint64_t diff[2] = { 0, 0 };
	uint64_t one[2] = { 1, 0 };
	uint64_t next_pair[2];
	uint64_t next_try[2];
	uint64_t bit_pairs, pair_shift;
	int i;

	bit_pairs = FUNC3(square) / 2;
	pair_shift = bit_pairs * 2;

	for (i = 0; i <= bit_pairs; i++) {
		/*
		 * Bring down the next pair of bits.
		 */
		next_pair[0] = square[0];
		next_pair[1] = square[1];
		FUNC4(next_pair, -pair_shift);
		next_pair[0] &= 0x3;
		next_pair[1] = 0;

		FUNC4(diff, 2);
		FUNC1(diff, next_pair, diff);

		/*
		 * next_try = R << 2 + 1
		 */
		next_try[0] = result[0];
		next_try[1] = result[1];
		FUNC4(next_try, 2);
		FUNC1(next_try, one, next_try);

		if (FUNC2(next_try, diff)) {
			FUNC5(diff, next_try, diff);
			FUNC4(result, 1);
			FUNC1(result, one, result);
		} else {
			FUNC4(result, 1);
		}

		pair_shift -= 2;
	}

	FUNC0(result[1] == 0);

	return (result[0]);
}