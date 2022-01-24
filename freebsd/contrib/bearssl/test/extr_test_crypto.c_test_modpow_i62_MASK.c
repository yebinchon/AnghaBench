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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  uint16_t ;
typedef  int /*<<< orphan*/  br_hmac_drbg_context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned char*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned char*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned char*,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char*,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned char*,size_t,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned char*,size_t) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned char*,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (unsigned char*,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,unsigned char*,size_t,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  br_sha256_vtable ; 
 int /*<<< orphan*/  FUNC12 (char*,unsigned char*,unsigned char*,size_t) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 
 int /*<<< orphan*/  stdout ; 

__attribute__((used)) static void
FUNC15(void)
{
	br_hmac_drbg_context hc;
	int k;

	FUNC14("Test ModPow/i62: ");

	FUNC1(&hc, &br_sha256_vtable, "seed modpow", 11);
	for (k = 10; k <= 500; k ++) {
		size_t blen;
		unsigned char bm[128], bx[128], bx1[128], bx2[128];
		unsigned char be[128];
		unsigned mask;
		uint32_t x1[35], m1[35];
		uint16_t x2[70], m2[70];
		uint64_t tmp1[500];
		uint16_t tmp2[2000];

		blen = (k + 7) >> 3;
		FUNC0(&hc, bm, blen);
		FUNC0(&hc, bx, blen);
		FUNC0(&hc, be, blen);
		bm[blen - 1] |= 0x01;
		mask = 0xFF >> ((int)(blen << 3) - k);
		bm[0] &= mask;
		bm[0] |= (mask - (mask >> 1));
		bx[0] &= (mask >> 1);

		FUNC7(m1, bm, blen);
		FUNC8(x1, bx, blen, m1);
		FUNC11(x1, be, blen, m1, FUNC10(m1[1]),
			tmp1, (sizeof tmp1) / (sizeof tmp1[0]));
		FUNC9(bx1, blen, x1);

		FUNC2(m2, bm, blen);
		FUNC3(x2, bx, blen, m2);
		FUNC5(x2, be, blen, m2, FUNC6(m2[1]),
			tmp2, (sizeof tmp2) / (sizeof tmp2[0]));
		FUNC4(bx2, blen, x2);

		FUNC12("ModPow i62/i15", bx1, bx2, blen);

		FUNC14(".");
		FUNC13(stdout);
	}

	FUNC14(" done.\n");
	FUNC13(stdout);
}