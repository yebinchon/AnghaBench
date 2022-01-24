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
struct snd_trident {scalar_t__ device; unsigned int spdif_bits; TYPE_2__* spdif_pcm_ctl; int /*<<< orphan*/  card; int /*<<< orphan*/  reg_lock; scalar_t__ spdif_ctrl; } ;
struct snd_pcm_substream {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  id; TYPE_1__* vd; } ;
struct TYPE_3__ {int /*<<< orphan*/  access; } ;

/* Variables and functions */
 scalar_t__ NX_SPCSTATUS ; 
 scalar_t__ NX_SPCTRL_SPCSO ; 
 scalar_t__ SI_SERIAL_INTF_CTRL ; 
 scalar_t__ SI_SPDIF_CS ; 
 int /*<<< orphan*/  SNDRV_CTL_ELEM_ACCESS_INACTIVE ; 
 int SNDRV_CTL_EVENT_MASK_INFO ; 
 int SNDRV_CTL_EVENT_MASK_VALUE ; 
 unsigned int SPDIF_EN ; 
 scalar_t__ TRIDENT_DEVICE_ID_SI7018 ; 
 int /*<<< orphan*/  FUNC0 (struct snd_trident*,scalar_t__) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 struct snd_trident* FUNC5 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct snd_pcm_substream *substream)
{
	struct snd_trident *trident = FUNC5(substream);
	unsigned int temp;

	FUNC6(&trident->reg_lock);
	// restore default SPDIF setting
	if (trident->device != TRIDENT_DEVICE_ID_SI7018) {
		FUNC2(trident->spdif_ctrl, FUNC0(trident, NX_SPCTRL_SPCSO + 3));
		FUNC3(trident->spdif_bits, FUNC0(trident, NX_SPCSTATUS));
	} else {
		FUNC3(trident->spdif_bits, FUNC0(trident, SI_SPDIF_CS));
		temp = FUNC1(FUNC0(trident, SI_SERIAL_INTF_CTRL));
		if (trident->spdif_ctrl) {
			temp |= SPDIF_EN;
		} else {
			temp &= ~SPDIF_EN;
		}
		FUNC3(temp, FUNC0(trident, SI_SERIAL_INTF_CTRL));
	}
	FUNC7(&trident->reg_lock);
	trident->spdif_pcm_ctl->vd[0].access |= SNDRV_CTL_ELEM_ACCESS_INACTIVE;
	FUNC4(trident->card, SNDRV_CTL_EVENT_MASK_VALUE |
		       SNDRV_CTL_EVENT_MASK_INFO, &trident->spdif_pcm_ctl->id);
	return 0;
}