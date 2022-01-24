#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct TYPE_10__ {int /*<<< orphan*/ * c; } ;
typedef  TYPE_1__ jacobian ;
typedef  int /*<<< orphan*/  curve_params ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,TYPE_1__*,TYPE_1__*,int) ; 
 unsigned char* FUNC1 (int,size_t*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int) ; 
 int FUNC4 (TYPE_1__*,TYPE_1__*,int /*<<< orphan*/  const*) ; 
 int FUNC5 (TYPE_1__*,unsigned char const*,size_t,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC7 (unsigned char*,TYPE_1__*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,unsigned char const*,size_t,int /*<<< orphan*/  const*) ; 

__attribute__((used)) static uint32_t
FUNC9(unsigned char *A, const unsigned char *B, size_t len,
	const unsigned char *x, size_t xlen,
	const unsigned char *y, size_t ylen, int curve)
{
	uint32_t r, t, z;
	const curve_params *cc;
	jacobian P, Q;

	/*
	 * TODO: see about merging the two ladders. Right now, we do
	 * two independent point multiplications, which is a bit
	 * wasteful of CPU resources (but yields short code).
	 */

	cc = FUNC3(curve);
	r = FUNC5(&P, A, len, cc);
	if (B == NULL) {
		size_t Glen;

		B = FUNC1(curve, &Glen);
	}
	r &= FUNC5(&Q, B, len, cc);
	FUNC8(&P, x, xlen, cc);
	FUNC8(&Q, y, ylen, cc);

	/*
	 * We want to compute P+Q. Since the base points A and B are distinct
	 * from infinity, and the multipliers are non-zero and lower than the
	 * curve order, then we know that P and Q are non-infinity. This
	 * leaves two special situations to test for:
	 * -- If P = Q then we must use point_double().
	 * -- If P+Q = 0 then we must report an error.
	 */
	t = FUNC4(&P, &Q, cc);
	FUNC6(&Q, cc);
	z = FUNC2(P.c[2]);

	/*
	 * If z is 1 then either P+Q = 0 (t = 1) or P = Q (t = 0). So we
	 * have the following:
	 *
	 *   z = 0, t = 0   return P (normal addition)
	 *   z = 0, t = 1   return P (normal addition)
	 *   z = 1, t = 0   return Q (a 'double' case)
	 *   z = 1, t = 1   report an error (P+Q = 0)
	 */
	FUNC0(z & ~t, &P, &Q, sizeof Q);
	FUNC7(A, &P, cc);
	r &= ~(z & t);

	return r;
}