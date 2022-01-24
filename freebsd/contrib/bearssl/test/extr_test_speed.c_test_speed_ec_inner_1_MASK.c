#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
typedef  scalar_t__ clock_t ;
struct TYPE_5__ {int /*<<< orphan*/  (* mul ) (unsigned char*,size_t,unsigned char*,size_t,int /*<<< orphan*/ ) ;} ;
typedef  TYPE_1__ br_ec_impl ;
struct TYPE_6__ {size_t order_len; size_t generator_len; int /*<<< orphan*/  curve; int /*<<< orphan*/  generator; int /*<<< orphan*/  order; } ;
typedef  TYPE_2__ br_ec_curve_def ;

/* Variables and functions */
 double CLOCKS_PER_SEC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,size_t,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (unsigned char*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC6 (unsigned char*,char,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,char const*,double) ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC8 (unsigned char*,size_t,unsigned char*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (unsigned char*,size_t,unsigned char*,size_t,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC10(const char *name,
	const br_ec_impl *impl, const br_ec_curve_def *cd)
{
	unsigned char bx[80], U[160];
	uint32_t x[22], n[22];
	size_t nlen, ulen;
	int i;
	long num;

	nlen = cd->order_len;
	FUNC0(n, cd->order, nlen);
	FUNC6(bx, 'T', sizeof bx);
	FUNC1(x, bx, sizeof bx, n);
	FUNC2(bx, nlen, x);
	ulen = cd->generator_len;
	FUNC5(U, cd->generator, ulen);
	for (i = 0; i < 10; i ++) {
		impl->mul(U, ulen, bx, nlen, cd->curve);
	}
	num = 10;
	for (;;) {
		clock_t begin, end;
		double tt;
		long k;

		begin = FUNC3();
		for (k = num; k > 0; k --) {
			impl->mul(U, ulen, bx, nlen, cd->curve);
		}
		end = FUNC3();
		tt = (double)(end - begin) / CLOCKS_PER_SEC;
		if (tt >= 2.0) {
			FUNC7("%-30s %8.2f mul/s\n", name,
				(double)num / tt);
			FUNC4(stdout);
			break;
		}
		num <<= 1;
	}
}