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
typedef  int /*<<< orphan*/  p256_jacobian ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned char const*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static size_t
FUNC3(unsigned char *R,
	const unsigned char *x, size_t xlen, int curve)
{
	p256_jacobian P;

	(void)curve;
	FUNC1(&P, x, xlen);
	FUNC2(&P);
	FUNC0(R, &P);
	return 65;

	/*
	const unsigned char *G;
	size_t Glen;

	G = api_generator(curve, &Glen);
	memcpy(R, G, Glen);
	api_mul(R, Glen, x, xlen, curve);
	return Glen;
	*/
}