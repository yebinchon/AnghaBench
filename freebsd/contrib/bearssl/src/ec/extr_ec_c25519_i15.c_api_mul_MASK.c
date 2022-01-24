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
typedef  unsigned char uint16_t ;

/* Variables and functions */
 unsigned char* C255_A24 ; 
 int* C255_P ; 
 unsigned char* C255_R2 ; 
 size_t ILEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  P0I ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,unsigned char*,int,unsigned char*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,int,unsigned char*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*,unsigned char*,unsigned char*,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char*,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC6 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC7 (unsigned char*,unsigned char*,unsigned char*) ; 
 int /*<<< orphan*/  FUNC8 (unsigned char*,unsigned char*,unsigned char*) ; 
 int /*<<< orphan*/  FUNC9 (unsigned char*,unsigned char*,unsigned char*) ; 
 int /*<<< orphan*/  FUNC10 (unsigned char*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC11 (unsigned char*,unsigned char const*,size_t) ; 
 int /*<<< orphan*/  FUNC12 (unsigned char*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static uint32_t
FUNC13(unsigned char *G, size_t Glen,
	const unsigned char *kb, size_t kblen, int curve)
{
#define ILEN   (18 * sizeof(uint16_t))

	/*
	 * The a[] and b[] arrays have an extra word to allow for
	 * decoding without using br_i15_decode_reduce().
	 */
	uint16_t x1[18], x2[18], x3[18], z2[18], z3[18];
	uint16_t a[19], aa[18], b[19], bb[18];
	uint16_t c[18], d[18], e[18], da[18], cb[18];
	unsigned char k[32];
	uint32_t swap;
	int i;

	(void)curve;

	/*
	 * Points are encoded over exactly 32 bytes. Multipliers must fit
	 * in 32 bytes as well.
	 * RFC 7748 mandates that the high bit of the last point byte must
	 * be ignored/cleared.
	 */
	if (Glen != 32 || kblen > 32) {
		return 0;
	}
	G[31] &= 0x7F;

	/*
	 * Byteswap the point encoding, because it uses little-endian, and
	 * the generic decoding routine uses big-endian.
	 */
	FUNC6(G);

	/*
	 * Decode the point ('u' coordinate). This should be reduced
	 * modulo p, but we prefer to avoid the dependency on
	 * br_i15_decode_reduce(). Instead, we use br_i15_decode_mod()
	 * with a synthetic modulus of value 2^255 (this must work
	 * since G was truncated to 255 bits), then use a conditional
	 * subtraction. We use br_i15_decode_mod() and not
	 * br_i15_decode(), because the ec_prime_i15 implementation uses
	 * the former but not the latter.
	 *    br_i15_decode_reduce(a, G, 32, C255_P);
	 */
	FUNC5(b, 0x111);
	b[18] = 1;
	FUNC1(a, G, 32, b);
	a[0] = 0x110;
	FUNC4(a, C255_P, FUNC0(FUNC4(a, C255_P, 0)));

	/*
	 * Initialise variables x1, x2, z2, x3 and z3. We set all of them
	 * into Montgomery representation.
	 */
	FUNC3(x1, a, C255_R2, C255_P, P0I);
	FUNC11(x3, x1, ILEN);
	FUNC5(z2, C255_P[0]);
	FUNC11(x2, z2, ILEN);
	x2[1] = 19;
	FUNC11(z3, x2, ILEN);

	FUNC12(k, 0, (sizeof k) - kblen);
	FUNC11(k + (sizeof k) - kblen, kb, kblen);
	k[31] &= 0xF8;
	k[0] &= 0x7F;
	k[0] |= 0x40;

	/* obsolete
	print_int_mont("x1", x1);
	*/

	swap = 0;
	for (i = 254; i >= 0; i --) {
		uint32_t kt;

		kt = (k[31 - (i >> 3)] >> (i & 7)) & 1;
		swap ^= kt;
		FUNC10(x2, x3, swap);
		FUNC10(z2, z3, swap);
		swap = kt;

		/* obsolete
		print_int_mont("x2", x2);
		print_int_mont("z2", z2);
		print_int_mont("x3", x3);
		print_int_mont("z3", z3);
		*/

		FUNC7(a, x2, z2);
		FUNC8(aa, a, a);
		FUNC9(b, x2, z2);
		FUNC8(bb, b, b);
		FUNC9(e, aa, bb);
		FUNC7(c, x3, z3);
		FUNC9(d, x3, z3);
		FUNC8(da, d, a);
		FUNC8(cb, c, b);

		/* obsolete
		print_int_mont("a ", a);
		print_int_mont("aa", aa);
		print_int_mont("b ", b);
		print_int_mont("bb", bb);
		print_int_mont("e ", e);
		print_int_mont("c ", c);
		print_int_mont("d ", d);
		print_int_mont("da", da);
		print_int_mont("cb", cb);
		*/

		FUNC7(x3, da, cb);
		FUNC8(x3, x3, x3);
		FUNC9(z3, da, cb);
		FUNC8(z3, z3, z3);
		FUNC8(z3, z3, x1);
		FUNC8(x2, aa, bb);
		FUNC8(z2, C255_A24, e);
		FUNC7(z2, z2, aa);
		FUNC8(z2, e, z2);

		/* obsolete
		print_int_mont("x2", x2);
		print_int_mont("z2", z2);
		print_int_mont("x3", x3);
		print_int_mont("z3", z3);
		*/
	}
	FUNC10(x2, x3, swap);
	FUNC10(z2, z3, swap);

	/*
	 * Inverse z2 with a modular exponentiation. This is a simple
	 * square-and-multiply algorithm; we mutualise most non-squarings
	 * since the exponent contains almost only ones.
	 */
	FUNC11(a, z2, ILEN);
	for (i = 0; i < 15; i ++) {
		FUNC8(a, a, a);
		FUNC8(a, a, z2);
	}
	FUNC11(b, a, ILEN);
	for (i = 0; i < 14; i ++) {
		int j;

		for (j = 0; j < 16; j ++) {
			FUNC8(b, b, b);
		}
		FUNC8(b, b, a);
	}
	for (i = 14; i >= 0; i --) {
		FUNC8(b, b, b);
		if ((0xFFEB >> i) & 1) {
			FUNC8(b, z2, b);
		}
	}
	FUNC8(b, x2, b);

	/*
	 * To avoid a dependency on br_i15_from_monty(), we use a
	 * Montgomery multiplication with 1.
	 *    memcpy(x2, b, ILEN);
	 *    br_i15_from_monty(x2, C255_P, P0I);
	 */
	FUNC5(a, C255_P[0]);
	a[1] = 1;
	FUNC3(x2, a, b, C255_P, P0I);

	FUNC2(G, 32, x2);
	FUNC6(G);
	return 1;

#undef ILEN
}