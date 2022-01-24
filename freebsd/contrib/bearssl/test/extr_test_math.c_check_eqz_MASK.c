#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  mpz_t ;
struct TYPE_2__ {int /*<<< orphan*/  (* encode ) (unsigned char*,size_t,int*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__* impl ; 
 scalar_t__ FUNC1 (unsigned char*,unsigned char*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,size_t*,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int /*<<< orphan*/  FUNC6 (unsigned char*,size_t,int*) ; 

__attribute__((used)) static void
FUNC7(uint32_t *x, mpz_t z)
{
	unsigned char xb[1000];
	unsigned char zb[1000];
	size_t xlen, zlen;
	int good;

	xlen = ((x[0] + 31) & ~(uint32_t)31) >> 3;
	impl->encode(xb, xlen, x);
	FUNC2(zb, &zlen, 1, 1, 0, 0, z);
	good = 1;
	if (xlen < zlen) {
		good = 0;
	} else if (xlen > zlen) {
		size_t u;

		for (u = xlen; u > zlen; u --) {
			if (xb[xlen - u] != 0) {
				good = 0;
				break;
			}
		}
	}
	good = good && FUNC1(xb + xlen - zlen, zb, zlen) == 0;
	if (!good) {
		size_t u;

		FUNC5("Mismatch:\n");
		FUNC5("  x = ");
		FUNC3(x);
		FUNC5("\n");
		FUNC5("  ex = ");
		for (u = 0; u < xlen; u ++) {
			FUNC5("%02X", xb[u]);
		}
		FUNC5("\n");
		FUNC5("  z = ");
		FUNC4(z);
		FUNC5("\n");
		FUNC0(EXIT_FAILURE);
	}
}