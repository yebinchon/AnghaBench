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
struct snd_soc_dai {struct snd_soc_codec* codec; } ;
struct snd_soc_codec {int dummy; } ;
struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {unsigned short rate; } ;

/* Variables and functions */
 unsigned short AC97_EXTENDED_STATUS ; 
 unsigned short AC97_PCM_FRONT_DAC_RATE ; 
 unsigned short AC97_SPDIF ; 
 unsigned short FUNC0 (struct snd_soc_codec*,unsigned short) ; 
 int FUNC1 (struct snd_soc_codec*,unsigned short,unsigned short) ; 

__attribute__((used)) static int FUNC2(struct snd_pcm_substream *substream,
				struct snd_soc_dai *dai)
{
	struct snd_soc_codec *codec = dai->codec;
	struct snd_pcm_runtime *runtime = substream->runtime;
	unsigned short reg, vra;

	FUNC1(codec, AC97_SPDIF, 0x2002);

	vra = FUNC0(codec, AC97_EXTENDED_STATUS);
	vra |= 0x5; /* Enable VRA and SPDIF out */

	FUNC1(codec, AC97_EXTENDED_STATUS, vra);

	reg = AC97_PCM_FRONT_DAC_RATE;

	return FUNC1(codec, reg, runtime->rate);
}