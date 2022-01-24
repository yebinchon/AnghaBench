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
struct TYPE_4__ {unsigned short* unchained; unsigned short* id; int* codec_cfg; } ;
struct TYPE_3__ {TYPE_2__ ad18xx; } ;
struct snd_ac97 {TYPE_1__ spec; } ;

/* Variables and functions */
 int /*<<< orphan*/  AC97_AD_CODEC_CFG ; 
 int /*<<< orphan*/  AC97_AD_SERIAL_CFG ; 
 int /*<<< orphan*/  AC97_VENDOR_ID2 ; 
 unsigned short FUNC0 (struct snd_ac97*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_ac97*,int /*<<< orphan*/ ,int,unsigned short) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_ac97*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static unsigned short FUNC3(struct snd_ac97 * ac97, int idx, unsigned short mask)
{
	unsigned short val;

	// test for unchained codec
	FUNC1(ac97, AC97_AD_SERIAL_CFG, 0x7000, mask);
	FUNC2(ac97, AC97_AD_CODEC_CFG, 0x0000);	/* ID0C, ID1C, SDIE = off */
	val = FUNC0(ac97, AC97_VENDOR_ID2);
	if ((val & 0xff40) != 0x5340)
		return 0;
	ac97->spec.ad18xx.unchained[idx] = mask;
	ac97->spec.ad18xx.id[idx] = val;
	ac97->spec.ad18xx.codec_cfg[idx] = 0x0000;
	return mask;
}