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
typedef  int u16 ;
struct ac97_codec {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AC97_POWER_CONTROL ; 
 int POLL_COUNT ; 
 int /*<<< orphan*/  PSC_AC97STAT ; 
 int PSC_AC97STAT_CR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int FUNC4 (struct ac97_codec*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ac97_codec*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(struct ac97_codec *codec)
{
	u16	temp;
	u32	val;
	int	i;

	/* codec_wait is used to wait for a ready state after
	 * an AC97C_RESET.
	 */
	FUNC0(10);

	/* first poll the CODEC_READY tag bit
	*/
	for (i = 0; i < POLL_COUNT; i++) {
		val = FUNC1(PSC_AC97STAT);
		FUNC2();
		if (val & PSC_AC97STAT_CR)
			break;
	}
	if (i == POLL_COUNT) {
		FUNC3("waitcodec: CODEC_READY poll expired!");
		return;
	}

	/* get AC'97 powerdown control/status register
	*/
	temp = FUNC4(codec, AC97_POWER_CONTROL);

	/* If anything is powered down, power'em up
	*/
	if (temp & 0x7f00) {
		/* Power on
		*/
		FUNC5(codec, AC97_POWER_CONTROL, 0);
		FUNC0(100);

		/* Reread
		*/
		temp = FUNC4(codec, AC97_POWER_CONTROL);
	}

	/* Check if Codec REF,ANL,DAC,ADC ready
	*/
	if ((temp & 0x7f0f) != 0x000f)
		FUNC3("codec reg 26 status (0x%x) not ready!!", temp);
}