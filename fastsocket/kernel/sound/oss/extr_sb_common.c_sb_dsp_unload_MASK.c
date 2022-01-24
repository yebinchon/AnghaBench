#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_6__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct address_info {size_t* slots; scalar_t__ io_base; } ;
struct TYPE_7__ {scalar_t__ base; int model; scalar_t__ pcibase; int caps; scalar_t__ dma8; scalar_t__ dma16; scalar_t__ irq; int /*<<< orphan*/  dev; int /*<<< orphan*/  my_mididev; } ;
typedef  TYPE_1__ sb_devc ;
struct TYPE_8__ {TYPE_1__* devc; } ;

/* Variables and functions */
 int MDL_ESS ; 
 int SB_NO_AUDIO ; 
 int SB_NO_MIDI ; 
 TYPE_6__** audio_devs ; 
 TYPE_1__* detected_devc ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

void FUNC7(struct address_info *hw_config, int sbmpu)
{
	sb_devc *devc;

	devc = audio_devs[hw_config->slots[0]]->devc;

	if (devc && devc->base == hw_config->io_base)
	{
		if ((devc->model & MDL_ESS) && devc->pcibase)
			FUNC2(devc->pcibase, 8);

		FUNC2(devc->base, 16);

		if (!(devc->caps & SB_NO_AUDIO))
		{
			FUNC4(devc->dma8);
			if (devc->dma16 >= 0)
				FUNC4(devc->dma16);
		}
		if (!(devc->caps & SB_NO_AUDIO && devc->caps & SB_NO_MIDI))
		{
			if (devc->irq > 0)
				FUNC0(devc->irq, devc);

			FUNC3(devc);
			/* We don't have to do this bit any more the UART401 is its own
				master  -- Krzysztof Halasa */
			/* But we have to do it, if UART401 is not detected */
			if (!sbmpu)
				FUNC6(devc->my_mididev);
			FUNC5(devc->dev);
		}
		FUNC1(devc);
	}
	else
		FUNC2(hw_config->io_base, 16);

	FUNC1(detected_devc);
}