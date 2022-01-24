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
struct snd_ac97 {int scaps; } ;

/* Variables and functions */
 int /*<<< orphan*/  AC97_EXTENDED_MID ; 
 int /*<<< orphan*/  AC97_REC_GAIN ; 
 int /*<<< orphan*/  AC97_RESET ; 
 int AC97_SCAP_DETECT_BY_VENDOR ; 
 int /*<<< orphan*/  AC97_VENDOR_ID1 ; 
 int /*<<< orphan*/  AC97_VENDOR_ID2 ; 
 int ENODEV ; 
 int jiffies ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct snd_ac97*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_ac97*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (unsigned long,int) ; 

__attribute__((used)) static int FUNC4(struct snd_ac97 *ac97, int timeout, int with_modem)
{
	unsigned long end_time;
	unsigned short val;

	end_time = jiffies + timeout;
	do {
		
		/* use preliminary reads to settle the communication */
		FUNC1(ac97, AC97_RESET);
		FUNC1(ac97, AC97_VENDOR_ID1);
		FUNC1(ac97, AC97_VENDOR_ID2);
		/* modem? */
		if (with_modem) {
			val = FUNC1(ac97, AC97_EXTENDED_MID);
			if (val != 0xffff && (val & 1) != 0)
				return 0;
		}
		if (ac97->scaps & AC97_SCAP_DETECT_BY_VENDOR) {
			/* probably only Xbox issue - all registers are read as zero */
			val = FUNC1(ac97, AC97_VENDOR_ID1);
			if (val != 0 && val != 0xffff)
				return 0;
		} else {
			/* because the PCM or MASTER volume registers can be modified,
			 * the REC_GAIN register is used for tests
			 */
			/* test if we can write to the record gain volume register */
			FUNC2(ac97, AC97_REC_GAIN, 0x8a05);
			if ((FUNC1(ac97, AC97_REC_GAIN) & 0x7fff) == 0x0a05)
				return 0;
		}
		FUNC0(1);
	} while (FUNC3(end_time, jiffies));
	return -ENODEV;
}