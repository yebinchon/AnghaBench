#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int* id; int* codec_cfg; scalar_t__* unchained; } ;
struct TYPE_4__ {TYPE_1__ ad18xx; } ;
struct snd_ac97 {int id; int /*<<< orphan*/ * build_ops; TYPE_2__ spec; void* ext_id; int /*<<< orphan*/  scaps; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  AC97_AD_CODEC_CFG ; 
 int /*<<< orphan*/  AC97_AD_MULTI ; 
 int /*<<< orphan*/  AC97_AD_SERIAL_CFG ; 
 int /*<<< orphan*/  AC97_EXTENDED_ID ; 
 int /*<<< orphan*/  AC97_SCAP_CENTER_LFE_DAC ; 
 int /*<<< orphan*/  AC97_SCAP_SURROUND_DAC ; 
 int /*<<< orphan*/  patch_ad1881_build_ops ; 
 int /*<<< orphan*/  FUNC0 (struct snd_ac97*,int,char const,char const) ; 
 unsigned short FUNC1 (struct snd_ac97*,int,int) ; 
 void* FUNC2 (struct snd_ac97*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_ac97*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_ac97*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC5(struct snd_ac97 * ac97)
{
	static const char cfg_idxs[3][2] = {
		{2, 1},
		{0, 2},
		{0, 1}
	};
	
	// patch for Analog Devices
	unsigned short codecs[3];
	unsigned short val;
	int idx, num;

	val = FUNC2(ac97, AC97_AD_SERIAL_CFG);
	FUNC4(ac97, AC97_AD_SERIAL_CFG, val);
	codecs[0] = FUNC1(ac97, 0, (1<<12));
	codecs[1] = FUNC1(ac97, 1, (1<<14));
	codecs[2] = FUNC1(ac97, 2, (1<<13));

	if (! (codecs[0] || codecs[1] || codecs[2]))
		goto __end;

	for (idx = 0; idx < 3; idx++)
		if (ac97->spec.ad18xx.unchained[idx])
			FUNC0(ac97, idx, cfg_idxs[idx][0], cfg_idxs[idx][1]);

	if (ac97->spec.ad18xx.id[1]) {
		ac97->flags |= AC97_AD_MULTI;
		ac97->scaps |= AC97_SCAP_SURROUND_DAC;
	}
	if (ac97->spec.ad18xx.id[2]) {
		ac97->flags |= AC97_AD_MULTI;
		ac97->scaps |= AC97_SCAP_CENTER_LFE_DAC;
	}

      __end:
	/* select all codecs */
	FUNC3(ac97, AC97_AD_SERIAL_CFG, 0x7000, 0x7000);
	/* check if only one codec is present */
	for (idx = num = 0; idx < 3; idx++)
		if (ac97->spec.ad18xx.id[idx])
			num++;
	if (num == 1) {
		/* ok, deselect all ID bits */
		FUNC4(ac97, AC97_AD_CODEC_CFG, 0x0000);
		ac97->spec.ad18xx.codec_cfg[0] = 
			ac97->spec.ad18xx.codec_cfg[1] = 
			ac97->spec.ad18xx.codec_cfg[2] = 0x0000;
	}
	/* required for AD1886/AD1885 combination */
	ac97->ext_id = FUNC2(ac97, AC97_EXTENDED_ID);
	if (ac97->spec.ad18xx.id[0]) {
		ac97->id &= 0xffff0000;
		ac97->id |= ac97->spec.ad18xx.id[0];
	}
	ac97->build_ops = &patch_ad1881_build_ops;
	return 0;
}