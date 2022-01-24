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
typedef  int u16 ;
struct snd_soc_dai {struct snd_soc_codec* codec; } ;
struct snd_soc_codec {struct aic26* private_data; } ;
struct aic26 {TYPE_1__* spi; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  AIC26_REG_DAC_GAIN ; 
 int FUNC0 (struct snd_soc_codec*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_soc_codec*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,struct snd_soc_dai*,int) ; 

__attribute__((used)) static int FUNC3(struct snd_soc_dai *dai, int mute)
{
	struct snd_soc_codec *codec = dai->codec;
	struct aic26 *aic26 = codec->private_data;
	u16 reg = FUNC0(codec, AIC26_REG_DAC_GAIN);

	FUNC2(&aic26->spi->dev, "aic26_mute(dai=%p, mute=%i)\n",
		dai, mute);

	if (mute)
		reg |= 0x8080;
	else
		reg &= ~0x8080;
	FUNC1(codec, AIC26_REG_DAC_GAIN, reg);

	return 0;
}