#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {void** mixspdif; int /*<<< orphan*/  fixed_res; void** mixcapt; void** mixplayb; } ;
typedef  TYPE_1__ vortex_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  VORTEX_RESOURCE_MIXIN ; 
 int /*<<< orphan*/  VORTEX_RESOURCE_MIXOUT ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int) ; 
 void* FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int,void**) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int,int,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int) ; 

__attribute__((used)) static void FUNC9(vortex_t * vortex, int en)
{
	// Connect AC97 codec.
	vortex->mixplayb[0] = FUNC4(vortex, vortex->fixed_res, en,
				  VORTEX_RESOURCE_MIXOUT);
	vortex->mixplayb[1] = FUNC4(vortex, vortex->fixed_res, en,
				  VORTEX_RESOURCE_MIXOUT);
	if (FUNC2(vortex)) {
		vortex->mixplayb[2] = FUNC4(vortex, vortex->fixed_res, en,
					  VORTEX_RESOURCE_MIXOUT);
		vortex->mixplayb[3] = FUNC4(vortex, vortex->fixed_res, en,
					  VORTEX_RESOURCE_MIXOUT);
	}
	FUNC5(vortex, en, vortex->mixplayb);

	vortex->mixcapt[0] = FUNC4(vortex, vortex->fixed_res, en,
				  VORTEX_RESOURCE_MIXIN);
	vortex->mixcapt[1] = FUNC4(vortex, vortex->fixed_res, en,
				  VORTEX_RESOURCE_MIXIN);
	FUNC6(vortex, en, FUNC1(0), FUNC1(1));

	// Connect SPDIF
#ifndef CHIP_AU8820
	vortex->mixspdif[0] = FUNC4(vortex, vortex->fixed_res, en,
				  VORTEX_RESOURCE_MIXOUT);
	vortex->mixspdif[1] = FUNC4(vortex, vortex->fixed_res, en,
				  VORTEX_RESOURCE_MIXOUT);
	FUNC7(vortex, en, 0x14, vortex->mixspdif[0],
				  FUNC0(0));
	FUNC7(vortex, en, 0x14, vortex->mixspdif[1],
				  FUNC0(1));
#endif
	// Connect WT
#ifndef CHIP_AU8810
	FUNC8(vortex, en);
#endif
	// A3D (crosstalk canceler and A3D slices). AU8810 disabled for now.
#ifndef CHIP_AU8820
	FUNC3(vortex, en);
#endif
	// Connect I2S

	// Connect DSP interface for SQ3500 turbo (not here i think...)

	// Connect AC98 modem codec
	
}