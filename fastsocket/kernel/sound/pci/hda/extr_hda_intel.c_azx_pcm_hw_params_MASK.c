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
struct snd_pcm_substream {int dummy; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct azx_pcm {struct azx* chip; } ;
struct azx_dev {scalar_t__ format_val; scalar_t__ period_bytes; scalar_t__ bufsize; } ;
struct azx {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 scalar_t__ FUNC0 (struct azx_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct azx_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct azx_dev*) ; 
 struct azx_dev* FUNC3 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC4 (struct azx*,struct azx_dev*,struct snd_pcm_substream*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_pcm_hw_params*) ; 
 int FUNC6 (struct snd_pcm_substream*,int /*<<< orphan*/ ) ; 
 struct azx_pcm* FUNC7 (struct snd_pcm_substream*) ; 

__attribute__((used)) static int FUNC8(struct snd_pcm_substream *substream,
			     struct snd_pcm_hw_params *hw_params)
{
	struct azx_pcm *apcm = FUNC7(substream);
	struct azx *chip = apcm->chip;
	struct azx_dev *azx_dev = FUNC3(substream);
	int ret;

	FUNC1(azx_dev);
	if (FUNC0(azx_dev)) {
		ret = -EBUSY;
		goto unlock;
	}

	FUNC4(chip, azx_dev, substream, false);
	azx_dev->bufsize = 0;
	azx_dev->period_bytes = 0;
	azx_dev->format_val = 0;
	ret = FUNC6(substream,
					FUNC5(hw_params));
	if (ret < 0)
		goto unlock;
	FUNC4(chip, azx_dev, substream, true);
 unlock:
	FUNC2(azx_dev);
	return ret;
}