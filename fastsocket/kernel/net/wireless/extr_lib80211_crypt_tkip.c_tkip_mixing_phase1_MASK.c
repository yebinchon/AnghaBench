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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
typedef  int u16 ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/  const,int /*<<< orphan*/  const) ; 
 int PHASE1_LOOP_COUNT ; 
 scalar_t__ FUNC3 (int) ; 

__attribute__((used)) static void FUNC4(u16 * TTAK, const u8 * TK, const u8 * TA,
			       u32 IV32)
{
	int i, j;

	/* Initialize the 80-bit TTAK from TSC (IV32) and TA[0..5] */
	TTAK[0] = FUNC1(IV32);
	TTAK[1] = FUNC0(IV32);
	TTAK[2] = FUNC2(TA[1], TA[0]);
	TTAK[3] = FUNC2(TA[3], TA[2]);
	TTAK[4] = FUNC2(TA[5], TA[4]);

	for (i = 0; i < PHASE1_LOOP_COUNT; i++) {
		j = 2 * (i & 1);
		TTAK[0] += FUNC3(TTAK[4] ^ FUNC2(TK[1 + j], TK[0 + j]));
		TTAK[1] += FUNC3(TTAK[0] ^ FUNC2(TK[5 + j], TK[4 + j]));
		TTAK[2] += FUNC3(TTAK[1] ^ FUNC2(TK[9 + j], TK[8 + j]));
		TTAK[3] += FUNC3(TTAK[2] ^ FUNC2(TK[13 + j], TK[12 + j]));
		TTAK[4] += FUNC3(TTAK[3] ^ FUNC2(TK[1 + j], TK[0 + j])) + i;
	}
}