#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int u32 ;

/* Variables and functions */
 int /*<<< orphan*/  PSC_AC97CFG ; 
 int PSC_AC97CFG_DE_ENABLE ; 
 int FUNC0 (int) ; 
 int PSC_AC97CFG_RXSLOT_MASK ; 
 int /*<<< orphan*/  PSC_AC97STAT ; 
 int PSC_AC97STAT_DR ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(int num_channels)
{
	u32	ac97_config, stat;

	ac97_config = FUNC1(PSC_AC97CFG);
	FUNC2();
	ac97_config &= ~(PSC_AC97CFG_RXSLOT_MASK | PSC_AC97CFG_DE_ENABLE);
	FUNC3(ac97_config, PSC_AC97CFG);
	FUNC2();

	/* Always enable slots 3 and 4 (stereo). Slot 6 is
	 * optional Mic ADC, which we don't support yet.
	 */
	ac97_config |= FUNC0(3);
	ac97_config |= FUNC0(4);

	FUNC3(ac97_config, PSC_AC97CFG);
	FUNC2();

	ac97_config |= PSC_AC97CFG_DE_ENABLE;
	FUNC3(ac97_config, PSC_AC97CFG);
	FUNC2();

	/* Wait for Device ready.
	*/
	do {
		stat = FUNC1(PSC_AC97STAT);
		FUNC2();
	} while ((stat & PSC_AC97STAT_DR) == 0);
}