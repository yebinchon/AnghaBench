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
typedef  int /*<<< orphan*/  mpz_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned char*,unsigned char*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,size_t*,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 

__attribute__((used)) static void
FUNC4(mpz_t z)
{
	unsigned char zb[1000];
	size_t zlen, k;

	FUNC2(zb, &zlen, 1, 1, 0, 0, z);
	if (zlen == 0) {
		FUNC3(" 00");
		return;
	}
	if ((zlen & 3) != 0) {
		k = 4 - (zlen & 3);
		FUNC0(zb + k, zb, zlen);
		FUNC1(zb, 0, k);
		zlen += k;
	}
	for (k = 0; k < zlen; k += 4) {
		FUNC3(" %02X%02X%02X%02X",
			zb[k], zb[k + 1], zb[k + 2], zb[k + 3]);
	}
}