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

__attribute__((used)) static void FUNC1(struct snd_pcm_substream *substream,
			       struct snd_soc_dai *dai)
{
	int is_play = substream->stream == SNDRV_PCM_STREAM_PLAYBACK;
	struct snd_soc_codec *codec = dai->codec;

	if (is_play) {
		/* stop headphone output */
		FUNC0(codec, 0x01, 0x3b);
		FUNC0(codec, 0x01, 0x0b);
		FUNC0(codec, 0x00, 0x40);
		FUNC0(codec, 0x0e, 0x11);
		FUNC0(codec, 0x0f, 0x08);
	} else {
		/* stop stereo input */
		FUNC0(codec, 0x00, 0x40);
		FUNC0(codec, 0x10, 0x00);
		FUNC0(codec, 0x07, 0x01);
	}
}