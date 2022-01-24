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
struct snd_pcm_substream {int /*<<< orphan*/  runtime; } ;
struct azx_pcm {struct azx* chip; } ;
struct azx_dev {int dummy; } ;
struct azx {int dummy; } ;
typedef  int /*<<< orphan*/  snd_pcm_uframes_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct azx*,struct azx_dev*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct azx_dev* FUNC2 (struct snd_pcm_substream*) ; 
 struct azx_pcm* FUNC3 (struct snd_pcm_substream*) ; 

__attribute__((used)) static snd_pcm_uframes_t FUNC4(struct snd_pcm_substream *substream)
{
	struct azx_pcm *apcm = FUNC3(substream);
	struct azx *chip = apcm->chip;
	struct azx_dev *azx_dev = FUNC2(substream);
	return FUNC1(substream->runtime,
			       FUNC0(chip, azx_dev, false));
}