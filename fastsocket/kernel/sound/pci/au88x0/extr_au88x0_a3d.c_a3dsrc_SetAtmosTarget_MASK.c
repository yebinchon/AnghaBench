#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  mmio; } ;
typedef  TYPE_1__ vortex_t ;
struct TYPE_5__ {int /*<<< orphan*/  source; int /*<<< orphan*/  slice; scalar_t__ vortex; } ;
typedef  TYPE_2__ a3dsrc_t ;

/* Variables and functions */
 int /*<<< orphan*/  A3D_B_A21Target ; 
 int /*<<< orphan*/  A3D_B_B10Target ; 
 int /*<<< orphan*/  A3D_B_B2Target ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,short) ; 

__attribute__((used)) static void
FUNC2(a3dsrc_t * a, short aa, short b, short c, short d,
		      short e)
{
	vortex_t *vortex = (vortex_t *) (a->vortex);
	FUNC1(vortex->mmio,
		FUNC0(a->slice, a->source, A3D_B_A21Target),
		(e << 0x10) | d);
	FUNC1(vortex->mmio,
		FUNC0(a->slice, a->source, A3D_B_B10Target),
		(b << 0x10) | aa);
	FUNC1(vortex->mmio,
		FUNC0(a->slice, a->source, A3D_B_B2Target), c);
}