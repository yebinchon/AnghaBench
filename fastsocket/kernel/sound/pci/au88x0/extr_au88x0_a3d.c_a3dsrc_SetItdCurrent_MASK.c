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
 int /*<<< orphan*/  A3D_B_ITDCurrent ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,short) ; 

__attribute__((used)) static void FUNC2(a3dsrc_t * a, short litd, short ritd)
{
	vortex_t *vortex = (vortex_t *) (a->vortex);

	if (litd < 0)
		litd = 0;
	if (litd > 0x57FF)
		litd = 0x57FF;
	if (ritd < 0)
		ritd = 0;
	if (ritd > 0x57FF)
		ritd = 0x57FF;
	FUNC1(vortex->mmio,
		FUNC0(a->slice, a->source, A3D_B_ITDCurrent),
		(ritd << 0x10) | litd);
	//hwwrite(vortex->mmio, addr(0x191DF+1, this04, this08), (ritd<<0x10)|litd);
}