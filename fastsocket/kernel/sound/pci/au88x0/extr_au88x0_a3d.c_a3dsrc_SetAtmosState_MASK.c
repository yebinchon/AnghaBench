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
 int /*<<< orphan*/  A3D_A_x1 ; 
 int /*<<< orphan*/  A3D_A_x2 ; 
 int /*<<< orphan*/  A3D_A_y1 ; 
 int /*<<< orphan*/  A3D_A_y2 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,short) ; 

__attribute__((used)) static void
FUNC2(a3dsrc_t * a, short x1, short x2, short y1, short y2)
{
	vortex_t *vortex = (vortex_t *) (a->vortex);
	FUNC1(vortex->mmio, FUNC0(a->slice, a->source, A3D_A_x1), x1);
	FUNC1(vortex->mmio, FUNC0(a->slice, a->source, A3D_A_x2), x2);
	FUNC1(vortex->mmio, FUNC0(a->slice, a->source, A3D_A_y1), y1);
	FUNC1(vortex->mmio, FUNC0(a->slice, a->source, A3D_A_y2), y2);
}