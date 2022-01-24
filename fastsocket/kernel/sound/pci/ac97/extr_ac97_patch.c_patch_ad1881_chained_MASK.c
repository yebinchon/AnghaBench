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
struct TYPE_3__ {int* codec_cfg; scalar_t__* unchained; scalar_t__* chained; } ;
struct TYPE_4__ {TYPE_1__ ad18xx; } ;
struct snd_ac97 {TYPE_2__ spec; } ;

/* Variables and functions */
 int /*<<< orphan*/  AC97_AD_CODEC_CFG ; 
 int /*<<< orphan*/  AC97_AD_SERIAL_CFG ; 
 scalar_t__ FUNC0 (struct snd_ac97*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_ac97*,int /*<<< orphan*/ ,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_ac97*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(struct snd_ac97 * ac97, int unchained_idx, int cidx1, int cidx2)
{
	// already detected?
	if (ac97->spec.ad18xx.unchained[cidx1] || ac97->spec.ad18xx.chained[cidx1])
		cidx1 = -1;
	if (ac97->spec.ad18xx.unchained[cidx2] || ac97->spec.ad18xx.chained[cidx2])
		cidx2 = -1;
	if (cidx1 < 0 && cidx2 < 0)
		return;
	// test for chained codecs
	FUNC1(ac97, AC97_AD_SERIAL_CFG, 0x7000,
			     ac97->spec.ad18xx.unchained[unchained_idx]);
	FUNC2(ac97, AC97_AD_CODEC_CFG, 0x0002);		// ID1C
	ac97->spec.ad18xx.codec_cfg[unchained_idx] = 0x0002;
	if (cidx1 >= 0) {
		if (cidx2 < 0)
			FUNC0(ac97, cidx1, 0);
		else if (FUNC0(ac97, cidx1, 0x0006))	// SDIE | ID1C
			FUNC0(ac97, cidx2, 0);
		else if (FUNC0(ac97, cidx2, 0x0006))	// SDIE | ID1C
			FUNC0(ac97, cidx1, 0);
	} else if (cidx2 >= 0) {
		FUNC0(ac97, cidx2, 0);
	}
}