#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {scalar_t__ model; int audio_flags; } ;
typedef  TYPE_1__ ad1848_info ;

/* Variables and functions */
 int DMA_DUPLEX ; 
 scalar_t__ MD_1845 ; 
 scalar_t__ MD_1845_SSCAPE ; 
 scalar_t__ MD_1848 ; 
 scalar_t__ MD_4236 ; 
 scalar_t__ MD_IWAVE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int FUNC4 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ soundpro ; 

__attribute__((used)) static void FUNC9(ad1848_info * devc)
{
	int i;
	int *init_values;

	/*
	 * Initial values for the indirect registers of CS4248/AD1848.
	 */
	static int      init_values_a[] =
	{
		0xa8, 0xa8, 0x08, 0x08, 0x08, 0x08, 0x00, 0x00,
		0x00, 0x0c, 0x02, 0x00, 0x8a, 0x01, 0x00, 0x00,

	/* Positions 16 to 31 just for CS4231/2 and ad1845 */
		0x80, 0x00, 0x10, 0x10, 0x00, 0x00, 0x1f, 0x40,
		0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	};

	static int      init_values_b[] =
	{
		/* 
		   Values for the newer chips
		   Some of the register initialization values were changed. In
		   order to get rid of the click that preceded PCM playback,
		   calibration was disabled on the 10th byte. On that same byte,
		   dual DMA was enabled; on the 11th byte, ADC dithering was
		   enabled, since that is theoretically desirable; on the 13th
		   byte, Mode 3 was selected, to enable access to extended
		   registers.
		 */
		0xa8, 0xa8, 0x08, 0x08, 0x08, 0x08, 0x00, 0x00,
		0x00, 0x00, 0x06, 0x00, 0xe0, 0x01, 0x00, 0x00,
 		0x80, 0x00, 0x10, 0x10, 0x00, 0x00, 0x1f, 0x40,
 		0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	};

	/*
	 *	Select initialisation data
	 */
	 
	init_values = init_values_a;
	if(devc->model >= MD_4236)
		init_values = init_values_b;

	for (i = 0; i < 16; i++)
		FUNC6(devc, i, init_values[i]);


	FUNC3(devc);		/* Initialize some variables */
	FUNC5(devc);	/* Leave it unmuted now */

	if (devc->model > MD_1848)
	{
		if (devc->model == MD_1845_SSCAPE)
			FUNC6(devc, 12, FUNC4(devc, 12) | 0x50);
		else 
			FUNC6(devc, 12, FUNC4(devc, 12) | 0x40);		/* Mode2 = enabled */

		if (devc->model == MD_IWAVE)
			FUNC6(devc, 12, 0x6c);	/* Select codec mode 3 */

		if (devc->model != MD_1845_SSCAPE)
			for (i = 16; i < 32; i++)
				FUNC6(devc, i, init_values[i]);

		if (devc->model == MD_IWAVE)
			FUNC6(devc, 16, 0x30);	/* Playback and capture counters enabled */
	}
	if (devc->model > MD_1848)
	{
		if (devc->audio_flags & DMA_DUPLEX)
			FUNC6(devc, 9, FUNC4(devc, 9) & ~0x04);	/* Dual DMA mode */
		else
			FUNC6(devc, 9, FUNC4(devc, 9) | 0x04);	/* Single DMA mode */

		if (devc->model == MD_1845 || devc->model == MD_1845_SSCAPE)
			FUNC6(devc, 27, FUNC4(devc, 27) | 0x08);		/* Alternate freq select enabled */

		if (devc->model == MD_IWAVE)
		{		/* Some magic Interwave specific initialization */
			FUNC6(devc, 12, 0x6c);	/* Select codec mode 3 */
			FUNC6(devc, 16, 0x30);	/* Playback and capture counters enabled */
			FUNC6(devc, 17, 0xc2);	/* Alternate feature enable */
		}
	}
	else
	{
		  devc->audio_flags &= ~DMA_DUPLEX;
		  FUNC6(devc, 9, FUNC4(devc, 9) | 0x04);	/* Single DMA mode */
		  if (soundpro)
			  FUNC6(devc, 12, FUNC4(devc, 12) | 0x40);	/* Mode2 = enabled */
	}

	FUNC8((0), FUNC7(devc));	/* Clear pending interrupts */

	/*
	 * Toggle the MCE bit. It completes the initialization phase.
	 */

	FUNC1(devc);	/* In case the bit was off */
	FUNC2(devc);

	FUNC0(devc);
}