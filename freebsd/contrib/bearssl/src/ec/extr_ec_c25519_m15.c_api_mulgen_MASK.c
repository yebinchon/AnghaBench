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

/* Variables and functions */
 unsigned char* FUNC0 (int,size_t*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,size_t,unsigned char const*,size_t,int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,unsigned char const*,size_t) ; 

__attribute__((used)) static size_t
FUNC3(unsigned char *R,
	const unsigned char *x, size_t xlen, int curve)
{
	const unsigned char *G;
	size_t Glen;

	G = FUNC0(curve, &Glen);
	FUNC2(R, G, Glen);
	FUNC1(R, Glen, x, xlen, curve);
	return Glen;
}