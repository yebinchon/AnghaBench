#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct TYPE_12__ {int* z; } ;
typedef  TYPE_1__ p256_jacobian ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,TYPE_1__*,TYPE_1__*,int) ; 
 int FUNC1 (int,int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_1__*,TYPE_1__*) ; 
 int FUNC3 (TYPE_1__*,unsigned char const*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (unsigned char*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,unsigned char const*,size_t) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,unsigned char const*,size_t) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (int*) ; 

__attribute__((used)) static uint32_t
FUNC10(unsigned char *A, const unsigned char *B, size_t len,
	const unsigned char *x, size_t xlen,
	const unsigned char *y, size_t ylen, int curve)
{
	p256_jacobian P, Q;
	uint32_t r, t, z;
	int i;

	(void)curve;
	r = FUNC3(&P, A, len);
	FUNC6(&P, x, xlen);
	if (B == NULL) {
		FUNC7(&Q, y, ylen);
	} else {
		r &= FUNC3(&Q, B, len);
		FUNC6(&Q, y, ylen);
	}

	/*
	 * The final addition may fail in case both points are equal.
	 */
	t = FUNC2(&P, &Q);
	FUNC9(P.z);
	z = 0;
	for (i = 0; i < 20; i ++) {
		z |= P.z[i];
	}
	z = FUNC1(z, 0);
	FUNC4(&Q);

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
	FUNC8(&P);
	FUNC5(A, &P);
	r &= ~(z & t);
	return r;
}