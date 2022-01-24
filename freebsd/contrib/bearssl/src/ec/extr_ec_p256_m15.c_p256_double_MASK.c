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
typedef  int uint32_t ;
struct TYPE_3__ {int* z; int* x; int* y; } ;
typedef  TYPE_1__ p256_jacobian ;

/* Variables and functions */
 int* F256 ; 
 int FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int*,int*,int*) ; 
 int /*<<< orphan*/  FUNC2 (int*,int*,int) ; 
 int /*<<< orphan*/  FUNC3 (int*) ; 
 int /*<<< orphan*/  FUNC4 (int*,int*) ; 

__attribute__((used)) static void
FUNC5(p256_jacobian *Q)
{
	/*
	 * Doubling formulas are:
	 *
	 *   s = 4*x*y^2
	 *   m = 3*(x + z^2)*(x - z^2)
	 *   x' = m^2 - 2*s
	 *   y' = m*(s - x') - 8*y^4
	 *   z' = 2*y*z
	 *
	 * These formulas work for all points, including points of order 2
	 * and points at infinity:
	 *   - If y = 0 then z' = 0. But there is no such point in P-256
	 *     anyway.
	 *   - If z = 0 then z' = 0.
	 */
	uint32_t t1[20], t2[20], t3[20], t4[20];
	int i;

	/*
	 * Compute z^2 in t1.
	 */
	FUNC4(t1, Q->z);

	/*
	 * Compute x-z^2 in t2 and x+z^2 in t1.
	 */
	for (i = 0; i < 20; i ++) {
		t2[i] = (F256[i] << 1) + Q->x[i] - t1[i];
		t1[i] += Q->x[i];
	}
	FUNC2(t1, t1, 20);
	FUNC2(t2, t2, 20);

	/*
	 * Compute 3*(x+z^2)*(x-z^2) in t1.
	 */
	FUNC1(t3, t1, t2);
	for (i = 0; i < 20; i ++) {
		t1[i] = FUNC0(3, t3[i]);
	}
	FUNC2(t1, t1, 20);

	/*
	 * Compute 4*x*y^2 (in t2) and 2*y^2 (in t3).
	 */
	FUNC4(t3, Q->y);
	for (i = 0; i < 20; i ++) {
		t3[i] <<= 1;
	}
	FUNC2(t3, t3, 20);
	FUNC1(t2, Q->x, t3);
	for (i = 0; i < 20; i ++) {
		t2[i] <<= 1;
	}
	FUNC2(t2, t2, 20);
	FUNC3(t2);

	/*
	 * Compute x' = m^2 - 2*s.
	 */
	FUNC4(Q->x, t1);
	for (i = 0; i < 20; i ++) {
		Q->x[i] += (F256[i] << 2) - (t2[i] << 1);
	}
	FUNC2(Q->x, Q->x, 20);
	FUNC3(Q->x);

	/*
	 * Compute z' = 2*y*z.
	 */
	FUNC1(t4, Q->y, Q->z);
	for (i = 0; i < 20; i ++) {
		Q->z[i] = t4[i] << 1;
	}
	FUNC2(Q->z, Q->z, 20);
	FUNC3(Q->z);

	/*
	 * Compute y' = m*(s - x') - 8*y^4. Note that we already have
	 * 2*y^2 in t3.
	 */
	for (i = 0; i < 20; i ++) {
		t2[i] += (F256[i] << 1) - Q->x[i];
	}
	FUNC2(t2, t2, 20);
	FUNC1(Q->y, t1, t2);
	FUNC4(t4, t3);
	for (i = 0; i < 20; i ++) {
		Q->y[i] += (F256[i] << 2) - (t4[i] << 1);
	}
	FUNC2(Q->y, Q->y, 20);
	FUNC3(Q->y);
}