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
struct hda_codec {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CS_DIG_OUT2_PIN_NID ; 
 int /*<<< orphan*/  IDX_SPDIF_CTL ; 
 int /*<<< orphan*/  FUNC0 (struct hda_codec*,int /*<<< orphan*/ ,unsigned int) ; 
 scalar_t__ FUNC1 (struct hda_codec*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct hda_codec *codec)
{
	unsigned int coef;

	coef = 0x0002; /* SRC_MUTE soft-mute on SPDIF (if no lock) */
	coef |= 0x0008; /* Replace with mute on error */
	if (FUNC1(codec, CS_DIG_OUT2_PIN_NID))
		coef |= 0x4000; /* RX to TX1 or TX2 Loopthru / SPDIF2
				 * SPDIF_OUT2 is shared with GPIO1 and
				 * DMIC_SDA2.
				 */
	FUNC0(codec, IDX_SPDIF_CTL, coef);
}