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
typedef  int u8 ;
struct snd_soc_codec {int dummy; } ;

/* Variables and functions */
 int SNDRV_PCM_STREAM_PLAYBACK ; 
 int TWL4030_ARXL1_VRX_EN ; 
 int TWL4030_ATXL2_VTXL_EN ; 
 int TWL4030_ATXR2_VTXR_EN ; 
 int /*<<< orphan*/  TWL4030_REG_OPTION ; 
 int FUNC0 (struct snd_soc_codec*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_soc_codec*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(struct snd_soc_codec *codec, int direction,
				int enable)
{
	u8 reg, mask;

	reg = FUNC0(codec, TWL4030_REG_OPTION);

	if (direction == SNDRV_PCM_STREAM_PLAYBACK)
		mask = TWL4030_ARXL1_VRX_EN;
	else
		mask = TWL4030_ATXL2_VTXL_EN | TWL4030_ATXR2_VTXR_EN;

	if (enable)
		reg |= mask;
	else
		reg &= ~mask;

	FUNC1(codec, TWL4030_REG_OPTION, reg);
}