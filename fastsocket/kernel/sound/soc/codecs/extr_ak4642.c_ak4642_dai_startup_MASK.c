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
struct snd_pcm_substream {scalar_t__ stream; } ;

/* Variables and functions */
 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ; 
 int /*<<< orphan*/  FUNC0 (struct snd_soc_codec*,int,int) ; 

__attribute__((used)) static int FUNC1(struct snd_pcm_substream *substream,
			      struct snd_soc_dai *dai)
{
	int is_play = substream->stream == SNDRV_PCM_STREAM_PLAYBACK;
	struct snd_soc_codec *codec = dai->codec;

	if (is_play) {
		/*
		 * start headphone output
		 *
		 * PLL, Master Mode
		 * Audio I/F Format :MSB justified (ADC & DAC)
		 * Sampling Frequency: 44.1kHz
		 * Digital Volume: −8dB
		 * Bass Boost Level : Middle
		 *
		 * This operation came from example code of
		 * "ASAHI KASEI AK4642" (japanese) manual p97.
		 *
		 * Example code use 0x39, 0x79 value for 0x01 address,
		 * But we need MCKO (0x02) bit now
		 */
		FUNC0(codec, 0x05, 0x27);
		FUNC0(codec, 0x0f, 0x09);
		FUNC0(codec, 0x0e, 0x19);
		FUNC0(codec, 0x09, 0x91);
		FUNC0(codec, 0x0c, 0x91);
		FUNC0(codec, 0x0a, 0x28);
		FUNC0(codec, 0x0d, 0x28);
		FUNC0(codec, 0x00, 0x64);
		FUNC0(codec, 0x01, 0x3b); /* + MCKO bit */
		FUNC0(codec, 0x01, 0x7b); /* + MCKO bit */
	} else {
		/*
		 * start stereo input
		 *
		 * PLL Master Mode
		 * Audio I/F Format:MSB justified (ADC & DAC)
		 * Sampling Frequency:44.1kHz
		 * Pre MIC AMP:+20dB
		 * MIC Power On
		 * ALC setting:Refer to Table 35
		 * ALC bit=“1”
		 *
		 * This operation came from example code of
		 * "ASAHI KASEI AK4642" (japanese) manual p94.
		 */
		FUNC0(codec, 0x05, 0x27);
		FUNC0(codec, 0x02, 0x05);
		FUNC0(codec, 0x06, 0x3c);
		FUNC0(codec, 0x08, 0xe1);
		FUNC0(codec, 0x0b, 0x00);
		FUNC0(codec, 0x07, 0x21);
		FUNC0(codec, 0x00, 0x41);
		FUNC0(codec, 0x10, 0x01);
	}

	return 0;
}