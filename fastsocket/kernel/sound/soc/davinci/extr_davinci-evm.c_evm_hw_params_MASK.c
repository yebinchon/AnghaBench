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
struct snd_soc_pcm_runtime {TYPE_1__* dai; } ;
struct snd_soc_dai {int dummy; } ;
struct snd_pcm_substream {struct snd_soc_pcm_runtime* private_data; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct TYPE_2__ {struct snd_soc_dai* cpu_dai; struct snd_soc_dai* codec_dai; } ;

/* Variables and functions */
 int /*<<< orphan*/  AUDIO_FORMAT ; 
 int EINVAL ; 
 int /*<<< orphan*/  SND_SOC_CLOCK_OUT ; 
 scalar_t__ FUNC0 () ; 
 scalar_t__ FUNC1 () ; 
 scalar_t__ FUNC2 () ; 
 scalar_t__ FUNC3 () ; 
 scalar_t__ FUNC4 () ; 
 int FUNC5 (struct snd_soc_dai*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct snd_soc_dai*,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct snd_pcm_substream *substream,
			 struct snd_pcm_hw_params *params)
{
	struct snd_soc_pcm_runtime *rtd = substream->private_data;
	struct snd_soc_dai *codec_dai = rtd->dai->codec_dai;
	struct snd_soc_dai *cpu_dai = rtd->dai->cpu_dai;
	int ret = 0;
	unsigned sysclk;

	/* ASP1 on DM355 EVM is clocked by an external oscillator */
	if (FUNC2() || FUNC3())
		sysclk = 27000000;

	/* ASP0 in DM6446 EVM is clocked by U55, as configured by
	 * board-dm644x-evm.c using GPIOs from U18.  There are six
	 * options; here we "know" we use a 48 KHz sample rate.
	 */
	else if (FUNC4())
		sysclk = 12288000;

	else if (FUNC0() ||
				FUNC1())
		sysclk = 24576000;

	else
		return -EINVAL;

	/* set codec DAI configuration */
	ret = FUNC5(codec_dai, AUDIO_FORMAT);
	if (ret < 0)
		return ret;

	/* set cpu DAI configuration */
	ret = FUNC5(cpu_dai, AUDIO_FORMAT);
	if (ret < 0)
		return ret;

	/* set the codec system clock */
	ret = FUNC6(codec_dai, 0, sysclk, SND_SOC_CLOCK_OUT);
	if (ret < 0)
		return ret;

	return 0;
}