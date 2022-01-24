#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_8__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
typedef  scalar_t__ clock_t ;
typedef  int (* br_ecdsa_vrfy ) (TYPE_1__ const*,unsigned char*,int,TYPE_2__*,unsigned char*,size_t) ;
typedef  size_t (* br_ecdsa_sign ) (TYPE_1__ const*,int /*<<< orphan*/ *,unsigned char*,TYPE_4__*,unsigned char*) ;
struct TYPE_16__ {unsigned char* q; size_t qlen; int /*<<< orphan*/  curve; } ;
typedef  TYPE_2__ br_ec_public_key ;
struct TYPE_17__ {unsigned char* x; size_t xlen; int /*<<< orphan*/  curve; } ;
typedef  TYPE_4__ br_ec_private_key ;
struct TYPE_15__ {int /*<<< orphan*/  (* mul ) (unsigned char*,size_t,unsigned char*,size_t,int /*<<< orphan*/ ) ;} ;
typedef  TYPE_1__ br_ec_impl ;
struct TYPE_18__ {size_t order_len; size_t generator_len; int /*<<< orphan*/  curve; int /*<<< orphan*/  generator; int /*<<< orphan*/  order; } ;
typedef  TYPE_8__ br_ec_curve_def ;

/* Variables and functions */
 double CLOCKS_PER_SEC ; 
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  br_sha256_vtable ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (unsigned char*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC8 (unsigned char*,char,int) ; 
 int /*<<< orphan*/  FUNC9 (char*,char const*,double) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC10 (unsigned char*,size_t,unsigned char*,size_t,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC11(const char *name,
	const br_ec_impl *impl, const br_ec_curve_def *cd,
	br_ecdsa_sign sign, br_ecdsa_vrfy vrfy)
{
	unsigned char bx[80], U[160], hv[32], sig[160];
	uint32_t x[22], n[22];
	size_t nlen, ulen, sig_len;
	int i;
	long num;
	br_ec_private_key sk;
	br_ec_public_key pk;

	nlen = cd->order_len;
	FUNC0(n, cd->order, nlen);
	FUNC8(bx, 'T', sizeof bx);
	FUNC1(x, bx, sizeof bx, n);
	FUNC2(bx, nlen, x);
	ulen = cd->generator_len;
	FUNC7(U, cd->generator, ulen);
	impl->mul(U, ulen, bx, nlen, cd->curve);
	sk.curve = cd->curve;
	sk.x = bx;
	sk.xlen = nlen;
	pk.curve = cd->curve;
	pk.q = U;
	pk.qlen = ulen;

	FUNC8(hv, 'H', sizeof hv);
	sig_len = sign(impl, &br_sha256_vtable, hv, &sk, sig);
	if (vrfy(impl, hv, sizeof hv, &pk, sig, sig_len) != 1) {
		FUNC6(stderr, "self-test sign/verify failed\n");
		FUNC4(EXIT_FAILURE);
	}

	for (i = 0; i < 10; i ++) {
		hv[1] ++;
		sign(impl, &br_sha256_vtable, hv, &sk, sig);
		vrfy(impl, hv, sizeof hv, &pk, sig, sig_len);
	}

	num = 10;
	for (;;) {
		clock_t begin, end;
		double tt;
		long k;

		begin = FUNC3();
		for (k = num; k > 0; k --) {
			hv[1] ++;
			sig_len = sign(impl, &br_sha256_vtable, hv, &sk, sig);
		}
		end = FUNC3();
		tt = (double)(end - begin) / CLOCKS_PER_SEC;
		if (tt >= 2.0) {
			FUNC9("%-30s %8.2f sign/s\n", name,
				(double)num / tt);
			FUNC5(stdout);
			break;
		}
		num <<= 1;
	}

	num = 10;
	for (;;) {
		clock_t begin, end;
		double tt;
		long k;

		begin = FUNC3();
		for (k = num; k > 0; k --) {
			vrfy(impl, hv, sizeof hv, &pk, sig, sig_len);
		}
		end = FUNC3();
		tt = (double)(end - begin) / CLOCKS_PER_SEC;
		if (tt >= 2.0) {
			FUNC9("%-30s %8.2f verify/s\n", name,
				(double)num / tt);
			FUNC5(stdout);
			break;
		}
		num <<= 1;
	}
}