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
struct TYPE_3__ {int* x; int* y; int* z; } ;
typedef  TYPE_1__ p256_jacobian ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int** Gwin ; 
 int /*<<< orphan*/  FUNC1 (int*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC2(p256_jacobian *T, uint32_t idx)
{
	uint32_t xy[20];
	uint32_t k;
	size_t u;

	FUNC1(xy, 0, sizeof xy);
	for (k = 0; k < 15; k ++) {
		uint32_t m;

		m = -FUNC0(idx, k + 1);
		for (u = 0; u < 20; u ++) {
			xy[u] |= m & Gwin[k][u];
		}
	}
	for (u = 0; u < 10; u ++) {
		T->x[(u << 1) + 0] = xy[u] & 0xFFFF;
		T->x[(u << 1) + 1] = xy[u] >> 16;
		T->y[(u << 1) + 0] = xy[u + 10] & 0xFFFF;
		T->y[(u << 1) + 1] = xy[u + 10] >> 16;
	}
	FUNC1(T->z, 0, sizeof T->z);
	T->z[0] = 1;
}