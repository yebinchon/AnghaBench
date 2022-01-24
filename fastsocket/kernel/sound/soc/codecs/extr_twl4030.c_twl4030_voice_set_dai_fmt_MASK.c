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
typedef  scalar_t__ u8 ;
struct snd_soc_dai {struct snd_soc_codec* codec; } ;
struct snd_soc_codec {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
#define  SND_SOC_DAIFMT_CBM_CFM 131 
#define  SND_SOC_DAIFMT_CBS_CFS 130 
#define  SND_SOC_DAIFMT_IB_NF 129 
 unsigned int SND_SOC_DAIFMT_INV_MASK ; 
 unsigned int SND_SOC_DAIFMT_MASTER_MASK ; 
#define  SND_SOC_DAIFMT_NB_IF 128 
 int /*<<< orphan*/  TWL4030_REG_VOICE_IF ; 
 scalar_t__ TWL4030_VIF_FORMAT ; 
 scalar_t__ TWL4030_VIF_SLAVE_EN ; 
 int /*<<< orphan*/  FUNC0 (struct snd_soc_codec*,int) ; 
 scalar_t__ FUNC1 (struct snd_soc_codec*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_soc_codec*,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC3(struct snd_soc_dai *codec_dai,
		unsigned int fmt)
{
	struct snd_soc_codec *codec = codec_dai->codec;
	u8 old_format, format;

	/* get format */
	old_format = FUNC1(codec, TWL4030_REG_VOICE_IF);
	format = old_format;

	/* set master/slave audio interface */
	switch (fmt & SND_SOC_DAIFMT_MASTER_MASK) {
	case SND_SOC_DAIFMT_CBM_CFM:
		format &= ~(TWL4030_VIF_SLAVE_EN);
		break;
	case SND_SOC_DAIFMT_CBS_CFS:
		format |= TWL4030_VIF_SLAVE_EN;
		break;
	default:
		return -EINVAL;
	}

	/* clock inversion */
	switch (fmt & SND_SOC_DAIFMT_INV_MASK) {
	case SND_SOC_DAIFMT_IB_NF:
		format &= ~(TWL4030_VIF_FORMAT);
		break;
	case SND_SOC_DAIFMT_NB_IF:
		format |= TWL4030_VIF_FORMAT;
		break;
	default:
		return -EINVAL;
	}

	if (format != old_format) {
		/* change format and set CODECPDZ */
		FUNC0(codec, 0);
		FUNC2(codec, TWL4030_REG_VOICE_IF, format);
		FUNC0(codec, 1);
	}

	return 0;
}