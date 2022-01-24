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
typedef  int /*<<< orphan*/ ** xtalk_state_t ;
typedef  int /*<<< orphan*/ * xtalk_instate_t ;
struct TYPE_3__ {int /*<<< orphan*/  mmio; } ;
typedef  TYPE_1__ vortex_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC1(vortex_t * vortex,
			       xtalk_instate_t const arg_0,
			       xtalk_state_t const coefs)
{
	int i;

	for (i = 0; i < 5; i++) {
		FUNC0(vortex->mmio, 0x2437C + i * 0x24, coefs[i][0]);
		FUNC0(vortex->mmio, 0x24380 + i * 0x24, coefs[i][1]);
		FUNC0(vortex->mmio, 0x24384 + i * 0x24, coefs[i][2]);
		FUNC0(vortex->mmio, 0x24388 + i * 0x24, coefs[i][3]);
	}
	FUNC0(vortex->mmio, 0x24518 + i * 0x24, arg_0[0]);
	FUNC0(vortex->mmio, 0x2451C + i * 0x24, arg_0[1]);
	FUNC0(vortex->mmio, 0x24520 + i * 0x24, arg_0[2]);
	FUNC0(vortex->mmio, 0x24524 + i * 0x24, arg_0[3]);
}