#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct snd_trident {scalar_t__ device; unsigned int spdif_pcm_bits; int spdif_pcm_ctrl; unsigned int spdif_bits; TYPE_1__* spdif_pcm_ctl; int /*<<< orphan*/  card; int /*<<< orphan*/  reg_lock; } ;
struct snd_pcm_substream {int dummy; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  id; } ;

/* Variables and functions */
 unsigned int IEC958_AES0_PROFESSIONAL ; 
 unsigned int IEC958_AES0_PRO_FS ; 
 int IEC958_AES0_PRO_FS_32000 ; 
 int IEC958_AES0_PRO_FS_44100 ; 
 int IEC958_AES0_PRO_FS_48000 ; 
 int IEC958_AES3_CON_FS ; 
 int IEC958_AES3_CON_FS_32000 ; 
 int IEC958_AES3_CON_FS_44100 ; 
 int IEC958_AES3_CON_FS_48000 ; 
 int /*<<< orphan*/  SNDRV_CTL_EVENT_MASK_VALUE ; 
 scalar_t__ TRIDENT_DEVICE_ID_SI7018 ; 
 int FUNC0 (struct snd_pcm_hw_params*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct snd_trident* FUNC2 (struct snd_pcm_substream*) ; 
 int FUNC3 (struct snd_pcm_substream*,struct snd_pcm_hw_params*) ; 
 int FUNC4 (struct snd_pcm_substream*,struct snd_pcm_hw_params*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct snd_pcm_substream *substream,
				       struct snd_pcm_hw_params *hw_params)
{
	struct snd_trident *trident = FUNC2(substream);
	unsigned int old_bits = 0, change = 0;
	int err;

	err = FUNC4(substream, hw_params);
	if (err < 0)
		return err;

	if (trident->device == TRIDENT_DEVICE_ID_SI7018) {
		err = FUNC3(substream, hw_params);
		if (err < 0)
			return err;
	}

	/* prepare SPDIF channel */
	FUNC5(&trident->reg_lock);
	old_bits = trident->spdif_pcm_bits;
	if (old_bits & IEC958_AES0_PROFESSIONAL)
		trident->spdif_pcm_bits &= ~IEC958_AES0_PRO_FS;
	else
		trident->spdif_pcm_bits &= ~(IEC958_AES3_CON_FS << 24);
	if (FUNC0(hw_params) >= 48000) {
		trident->spdif_pcm_ctrl = 0x3c;	// 48000 Hz
		trident->spdif_pcm_bits |=
			trident->spdif_bits & IEC958_AES0_PROFESSIONAL ?
				IEC958_AES0_PRO_FS_48000 :
				(IEC958_AES3_CON_FS_48000 << 24);
	}
	else if (FUNC0(hw_params) >= 44100) {
		trident->spdif_pcm_ctrl = 0x3e;	// 44100 Hz
		trident->spdif_pcm_bits |=
			trident->spdif_bits & IEC958_AES0_PROFESSIONAL ?
				IEC958_AES0_PRO_FS_44100 :
				(IEC958_AES3_CON_FS_44100 << 24);
	}
	else {
		trident->spdif_pcm_ctrl = 0x3d;	// 32000 Hz
		trident->spdif_pcm_bits |=
			trident->spdif_bits & IEC958_AES0_PROFESSIONAL ?
				IEC958_AES0_PRO_FS_32000 :
				(IEC958_AES3_CON_FS_32000 << 24);
	}
	change = old_bits != trident->spdif_pcm_bits;
	FUNC6(&trident->reg_lock);

	if (change)
		FUNC1(trident->card, SNDRV_CTL_EVENT_MASK_VALUE, &trident->spdif_pcm_ctl->id);

	return 0;
}