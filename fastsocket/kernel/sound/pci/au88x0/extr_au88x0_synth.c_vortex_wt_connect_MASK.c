#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int* mixwt; int /*<<< orphan*/  mmio; int /*<<< orphan*/ * mixplayb; int /*<<< orphan*/  fixed_res; } ;
typedef  TYPE_1__ vortex_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int NR_WT ; 
 int NR_WTBLOCKS ; 
 int NR_WTROUTES ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  VORTEX_RESOURCE_MIXIN ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(vortex_t * vortex, int en)
{
	int i, ii, mix;

#define NR_WTROUTES 6
#ifdef CHIP_AU8830
#define NR_WTBLOCKS 2
#else
#define NR_WTBLOCKS 1
#endif

	for (i = 0; i < NR_WTBLOCKS; i++) {
		for (ii = 0; ii < NR_WTROUTES; ii++) {
			mix =
			    FUNC5(vortex,
						  vortex->fixed_res, en,
						  VORTEX_RESOURCE_MIXIN);
			vortex->mixwt[(i * NR_WTROUTES) + ii] = mix;

			FUNC7(vortex, en, 0x11,
				     FUNC1(i, ii + 0x20), FUNC0(mix));

			FUNC6(vortex, en, mix,
						    vortex->mixplayb[ii % 2], 0);
			if (FUNC2(vortex))
				FUNC6(vortex, en,
							    mix,
							    vortex->mixplayb[2 +
								     (ii % 2)], 0);
		}
	}
	for (i = 0; i < NR_WT; i++) {
		FUNC4(vortex->mmio, FUNC3(i), 1);
	}
}