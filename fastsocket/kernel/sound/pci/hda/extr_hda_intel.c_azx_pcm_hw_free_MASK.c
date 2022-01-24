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
struct snd_pcm_substream {size_t stream; } ;
struct hda_pcm_stream {int dummy; } ;
struct azx_pcm {int /*<<< orphan*/  codec; struct hda_pcm_stream** hinfo; struct azx* chip; } ;
struct azx_dev {scalar_t__ prepared; scalar_t__ format_val; scalar_t__ period_bytes; scalar_t__ bufsize; } ;
struct azx {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SD_BDLPL ; 
 int /*<<< orphan*/  SD_BDLPU ; 
 int /*<<< orphan*/  SD_CTL ; 
 int /*<<< orphan*/  FUNC0 (struct azx_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct azx_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct azx_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct azx_dev*) ; 
 struct azx_dev* FUNC4 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC5 (struct azx*,struct azx_dev*,struct snd_pcm_substream*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct hda_pcm_stream*,struct snd_pcm_substream*) ; 
 int FUNC7 (struct snd_pcm_substream*) ; 
 struct azx_pcm* FUNC8 (struct snd_pcm_substream*) ; 

__attribute__((used)) static int FUNC9(struct snd_pcm_substream *substream)
{
	struct azx_pcm *apcm = FUNC8(substream);
	struct azx_dev *azx_dev = FUNC4(substream);
	struct azx *chip = apcm->chip;
	struct hda_pcm_stream *hinfo = apcm->hinfo[substream->stream];

	/* reset BDL address */
	FUNC2(azx_dev);
	if (!FUNC1(azx_dev)) {
		FUNC0(azx_dev, SD_BDLPL, 0);
		FUNC0(azx_dev, SD_BDLPU, 0);
		FUNC0(azx_dev, SD_CTL, 0);
		azx_dev->bufsize = 0;
		azx_dev->period_bytes = 0;
		azx_dev->format_val = 0;
	}

	FUNC6(apcm->codec, hinfo, substream);

	FUNC5(chip, azx_dev, substream, false);
	azx_dev->prepared = 0;
	FUNC3(azx_dev);
	return FUNC7(substream);
}