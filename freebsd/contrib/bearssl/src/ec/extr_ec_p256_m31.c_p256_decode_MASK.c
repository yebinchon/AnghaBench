#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_3__ {int* z; int /*<<< orphan*/  y; int /*<<< orphan*/  x; } ;
typedef  TYPE_1__ p256_jacobian ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char const,int) ; 
 int /*<<< orphan*/  P256_B ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned char const*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static uint32_t
FUNC10(p256_jacobian *P, const void *src, size_t len)
{
	const unsigned char *buf;
	uint32_t tx[9], ty[9], t1[9], t2[9];
	uint32_t bad;
	int i;

	if (len != 65) {
		return 0;
	}
	buf = src;

	/*
	 * First byte must be 0x04 (uncompressed format). We could support
	 * "hybrid format" (first byte is 0x06 or 0x07, and encodes the
	 * least significant bit of the Y coordinate), but it is explicitly
	 * forbidden by RFC 5480 (section 2.2).
	 */
	bad = FUNC1(buf[0], 0x04);

	/*
	 * Decode the coordinates, and check that they are both lower
	 * than the modulus.
	 */
	tx[8] = FUNC3(tx, buf + 1, 32);
	ty[8] = FUNC3(ty, buf + 33, 32);
	bad |= FUNC7(tx);
	bad |= FUNC7(ty);

	/*
	 * Check curve equation.
	 */
	FUNC8(t1, tx);
	FUNC6(t1, tx, t1);
	FUNC8(t2, ty);
	FUNC9(t1, t1, tx);
	FUNC9(t1, t1, tx);
	FUNC9(t1, t1, tx);
	FUNC2(t1, t1, P256_B);
	FUNC9(t1, t1, t2);
	FUNC7(t1);
	for (i = 0; i < 9; i ++) {
		bad |= t1[i];
	}

	/*
	 * Copy coordinates to the point structure.
	 */
	FUNC4(P->x, tx, sizeof tx);
	FUNC4(P->y, ty, sizeof ty);
	FUNC5(P->z, 0, sizeof P->z);
	P->z[0] = 1;
	return FUNC0(bad, 0);
}