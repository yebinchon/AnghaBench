#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  jacobian ;
struct TYPE_6__ {size_t point_len; } ;
typedef  TYPE_1__ curve_params ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned char*,size_t,TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,int /*<<< orphan*/ *,TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned char const*,size_t,TYPE_1__ const*) ; 

__attribute__((used)) static uint32_t
FUNC4(unsigned char *G, size_t Glen,
	const unsigned char *x, size_t xlen, int curve)
{
	uint32_t r;
	const curve_params *cc;
	jacobian P;

	cc = FUNC0(curve);
	r = FUNC1(&P, G, Glen, cc);
	FUNC3(&P, x, xlen, cc);
	if (Glen == cc->point_len) {
		FUNC2(G, &P, cc);
	}
	return r;
}