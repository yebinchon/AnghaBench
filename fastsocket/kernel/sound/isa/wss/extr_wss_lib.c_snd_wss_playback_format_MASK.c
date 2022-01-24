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
struct snd_wss {int hardware; int* image; int /*<<< orphan*/  mce_mutex; int /*<<< orphan*/  reg_lock; int /*<<< orphan*/  single_dma; } ;
struct snd_pcm_hw_params {int dummy; } ;

/* Variables and functions */
 size_t AD1845_LWR_FREQ_SEL ; 
 size_t AD1845_UPR_FREQ_SEL ; 
 size_t CS4231_ALT_FEATURE_1 ; 
 size_t CS4231_IFACE_CTRL ; 
 size_t CS4231_PLAYBK_FORMAT ; 
 int CS4231_RECORD_ENABLE ; 
 size_t CS4231_REC_FORMAT ; 
 int WSS_HW_AD1845 ; 
 int WSS_HW_CS4231A ; 
 int WSS_HW_CS4232_MASK ; 
 scalar_t__ WSS_HW_INTERWAVE ; 
 scalar_t__ WSS_HW_OPL3SA2 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC2 (struct snd_pcm_hw_params*) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_wss*) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_wss*) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_wss*,size_t,unsigned char) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 

__attribute__((used)) static void FUNC9(struct snd_wss *chip,
				       struct snd_pcm_hw_params *params,
				       unsigned char pdfr)
{
	unsigned long flags;
	int full_calib = 1;

	FUNC0(&chip->mce_mutex);
	if (chip->hardware == WSS_HW_CS4231A ||
	    (chip->hardware & WSS_HW_CS4232_MASK)) {
		FUNC6(&chip->reg_lock, flags);
		if ((chip->image[CS4231_PLAYBK_FORMAT] & 0x0f) == (pdfr & 0x0f)) {	/* rate is same? */
			FUNC5(chip, CS4231_ALT_FEATURE_1,
				    chip->image[CS4231_ALT_FEATURE_1] | 0x10);
			chip->image[CS4231_PLAYBK_FORMAT] = pdfr;
			FUNC5(chip, CS4231_PLAYBK_FORMAT,
				    chip->image[CS4231_PLAYBK_FORMAT]);
			FUNC5(chip, CS4231_ALT_FEATURE_1,
				    chip->image[CS4231_ALT_FEATURE_1] &= ~0x10);
			FUNC8(100); /* Fixes audible clicks at least on GUS MAX */
			full_calib = 0;
		}
		FUNC7(&chip->reg_lock, flags);
	} else if (chip->hardware == WSS_HW_AD1845) {
		unsigned rate = FUNC2(params);

		/*
		 * Program the AD1845 correctly for the playback stream.
		 * Note that we do NOT need to toggle the MCE bit because
		 * the PLAYBACK_ENABLE bit of the Interface Configuration
		 * register is set.
		 *
		 * NOTE: We seem to need to write to the MSB before the LSB
		 *       to get the correct sample frequency.
		 */
		FUNC6(&chip->reg_lock, flags);
		FUNC5(chip, CS4231_PLAYBK_FORMAT, (pdfr & 0xf0));
		FUNC5(chip, AD1845_UPR_FREQ_SEL, (rate >> 8) & 0xff);
		FUNC5(chip, AD1845_LWR_FREQ_SEL, rate & 0xff);
		full_calib = 0;
		FUNC7(&chip->reg_lock, flags);
	}
	if (full_calib) {
		FUNC4(chip);
		FUNC6(&chip->reg_lock, flags);
		if (chip->hardware != WSS_HW_INTERWAVE && !chip->single_dma) {
			if (chip->image[CS4231_IFACE_CTRL] & CS4231_RECORD_ENABLE)
				pdfr = (pdfr & 0xf0) |
				       (chip->image[CS4231_REC_FORMAT] & 0x0f);
		} else {
			chip->image[CS4231_PLAYBK_FORMAT] = pdfr;
		}
		FUNC5(chip, CS4231_PLAYBK_FORMAT, pdfr);
		FUNC7(&chip->reg_lock, flags);
		if (chip->hardware == WSS_HW_OPL3SA2)
			FUNC8(100);	/* this seems to help */
		FUNC3(chip);
	}
	FUNC1(&chip->mce_mutex);
}