#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  uint16_t ;
typedef  int /*<<< orphan*/  br_hmac_drbg_context ;
struct TYPE_12__ {size_t desc; } ;
typedef  TYPE_1__ br_hash_class ;
struct TYPE_13__ {int curve; int /*<<< orphan*/  xlen; int /*<<< orphan*/  x; } ;
typedef  TYPE_2__ br_ec_private_key ;
struct TYPE_14__ {int supported_curves; size_t (* mulgen ) (unsigned char*,unsigned char*,size_t,int) ;} ;
typedef  TYPE_3__ br_ec_impl ;
struct TYPE_15__ {size_t order_len; unsigned char* order; } ;
typedef  TYPE_4__ br_ec_curve_def ;

/* Variables and functions */
#define  BR_EC_secp256r1 130 
#define  BR_EC_secp384r1 129 
#define  BR_EC_secp521r1 128 
 size_t BR_HASHDESC_OUT_MASK ; 
 size_t BR_HASHDESC_OUT_OFF ; 
 int I15_LEN ; 
 int ORDER_LEN ; 
 int POINT_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned char*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned char*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_1__ const*,unsigned char*,size_t) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned char*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (unsigned char*,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned char*,size_t,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_4__ br_secp256r1 ; 
 TYPE_4__ br_secp384r1 ; 
 TYPE_4__ br_secp521r1 ; 
 int /*<<< orphan*/  FUNC14 (unsigned char*,unsigned char*,size_t) ; 
 size_t FUNC15 (unsigned char*,unsigned char*,size_t,int) ; 

size_t
FUNC16(const br_ec_impl *impl,
	const br_hash_class *hf, const void *hash_value,
	const br_ec_private_key *sk, void *sig)
{
	/*
	 * IMPORTANT: this code is fit only for curves with a prime
	 * order. This is needed so that modular reduction of the X
	 * coordinate of a point can be done with a simple subtraction.
	 * We also rely on the last byte of the curve order to be distinct
	 * from 0 and 1.
	 */
	const br_ec_curve_def *cd;
	uint16_t n[I15_LEN], r[I15_LEN], s[I15_LEN], x[I15_LEN];
	uint16_t m[I15_LEN], k[I15_LEN], t1[I15_LEN], t2[I15_LEN];
	unsigned char tt[ORDER_LEN << 1];
	unsigned char eU[POINT_LEN];
	size_t hash_len, nlen, ulen;
	uint16_t n0i;
	uint32_t ctl;
	br_hmac_drbg_context drbg;

	/*
	 * If the curve is not supported, then exit with an error.
	 */
	if (((impl->supported_curves >> sk->curve) & 1) == 0) {
		return 0;
	}

	/*
	 * Get the curve parameters (generator and order).
	 */
	switch (sk->curve) {
	case BR_EC_secp256r1:
		cd = &br_secp256r1;
		break;
	case BR_EC_secp384r1:
		cd = &br_secp384r1;
		break;
	case BR_EC_secp521r1:
		cd = &br_secp521r1;
		break;
	default:
		return 0;
	}

	/*
	 * Get modulus.
	 */
	nlen = cd->order_len;
	FUNC4(n, cd->order, nlen);
	n0i = FUNC11(n[1]);

	/*
	 * Get private key as an i15 integer. This also checks that the
	 * private key is well-defined (not zero, and less than the
	 * curve order).
	 */
	if (!FUNC5(x, sk->x, sk->xlen, n)) {
		return 0;
	}
	if (FUNC8(x)) {
		return 0;
	}

	/*
	 * Get hash length.
	 */
	hash_len = (hf->desc >> BR_HASHDESC_OUT_OFF) & BR_HASHDESC_OUT_MASK;

	/*
	 * Truncate and reduce the hash value modulo the curve order.
	 */
	FUNC0(m, hash_value, hash_len, n[0]);
	FUNC12(m, n, FUNC12(m, n, 0) ^ 1);

	/*
	 * RFC 6979 generation of the "k" value.
	 *
	 * The process uses HMAC_DRBG (with the hash function used to
	 * process the message that is to be signed). The seed is the
	 * concatenation of the encodings of the private key and
	 * the hash value (after truncation and modular reduction).
	 */
	FUNC6(tt, nlen, x);
	FUNC6(tt + nlen, nlen, m);
	FUNC2(&drbg, hf, tt, nlen << 1);
	for (;;) {
		FUNC1(&drbg, tt, nlen);
		FUNC0(k, tt, nlen, n[0]);
		if (FUNC8(k)) {
			continue;
		}
		if (FUNC12(k, n, 0)) {
			break;
		}
	}

	/*
	 * Compute k*G and extract the X coordinate, then reduce it
	 * modulo the curve order. Since we support only curves with
	 * prime order, that reduction is only a matter of computing
	 * a subtraction.
	 */
	FUNC6(tt, nlen, k);
	ulen = impl->mulgen(eU, tt, nlen, sk->curve);
	FUNC13(r, n[0]);
	FUNC4(r, &eU[1], ulen >> 1);
	r[0] = n[0];
	FUNC12(r, n, FUNC12(r, n, 0) ^ 1);

	/*
	 * Compute 1/k in double-Montgomery representation. We do so by
	 * first converting _from_ Montgomery representation (twice),
	 * then using a modular exponentiation.
	 */
	FUNC7(k, n, n0i);
	FUNC7(k, n, n0i);
	FUNC14(tt, cd->order, nlen);
	tt[nlen - 1] -= 2;
	FUNC9(k, tt, nlen, n, n0i, t1, t2);

	/*
	 * Compute s = (m+xr)/k (mod n).
	 * The k[] array contains R^2/k (double-Montgomery representation);
	 * we thus can use direct Montgomery multiplications and conversions
	 * from Montgomery, avoiding any call to br_i15_to_monty() (which
	 * is slower).
	 */
	FUNC7(m, n, n0i);
	FUNC10(t1, x, r, n, n0i);
	ctl = FUNC3(t1, m, 1);
	ctl |= FUNC12(t1, n, 0) ^ 1;
	FUNC12(t1, n, ctl);
	FUNC10(s, t1, k, n, n0i);

	/*
	 * Encode r and s in the signature.
	 */
	FUNC6(sig, nlen, r);
	FUNC6((unsigned char *)sig + nlen, nlen, s);
	return nlen << 1;
}