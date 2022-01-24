#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/ * c; } ;
typedef  TYPE_1__ jacobian ;
struct TYPE_11__ {int* p; } ;
typedef  TYPE_2__ curve_params ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned char*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  code_affine ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,TYPE_1__ const*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,TYPE_1__*,TYPE_2__ const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static void
FUNC4(void *dst, const jacobian *P, const curve_params *cc)
{
	unsigned char *buf;
	size_t plen;
	jacobian Q, T;

	buf = dst;
	plen = (cc->p[0] - (cc->p[0] >> 4) + 7) >> 3;
	buf[0] = 0x04;
	FUNC1(&Q, P, sizeof *P);
	FUNC3(T.c[2], cc->p);
	FUNC2(&Q, &T, cc, code_affine);
	FUNC0(buf + 1, plen, Q.c[0]);
	FUNC0(buf + 1 + plen, plen, Q.c[1]);
}