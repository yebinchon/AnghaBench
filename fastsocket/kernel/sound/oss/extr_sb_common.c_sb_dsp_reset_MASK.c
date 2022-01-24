#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ model; } ;
typedef  TYPE_1__ sb_devc ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DSP_DATA_AVAIL ; 
 int /*<<< orphan*/  DSP_READ ; 
 int /*<<< orphan*/  DSP_RESET ; 
 scalar_t__ MDL_ESS ; 
 int FUNC2 (TYPE_1__*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

int FUNC7(sb_devc * devc)
{
	int loopc;

	FUNC1(FUNC5("Entered sb_dsp_reset()\n"));

	if (devc->model == MDL_ESS) return FUNC2 (devc);

	/* This is only for non-ESS chips */

	FUNC4(1, DSP_RESET);

	FUNC6(10);
	FUNC4(0, DSP_RESET);
	FUNC6(30);

	for (loopc = 0; loopc < 1000 && !(FUNC3(DSP_DATA_AVAIL) & 0x80); loopc++);

	if (FUNC3(DSP_READ) != 0xAA)
	{
		FUNC0(FUNC5("sb: No response to RESET\n"));
		return 0;	/* Sorry */
	}

	FUNC1(FUNC5("sb_dsp_reset() OK\n"));

	return 1;
}