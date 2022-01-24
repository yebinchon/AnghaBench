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
struct TYPE_3__ {size_t generator_len; unsigned char const* generator; } ;
typedef  TYPE_1__ br_ec_curve_def ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int) ; 

__attribute__((used)) static const unsigned char *
FUNC1(int curve, size_t *len)
{
	const br_ec_curve_def *cd;

	cd = FUNC0(curve);
	*len = cd->generator_len;
	return cd->generator;
}