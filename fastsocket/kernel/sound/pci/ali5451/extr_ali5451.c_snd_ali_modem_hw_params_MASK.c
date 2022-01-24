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
struct snd_ali {int num_of_codecs; int /*<<< orphan*/ * ac97; } ;

/* Variables and functions */
 int /*<<< orphan*/  AC97_LINE1_LEVEL ; 
 int /*<<< orphan*/  AC97_LINE1_RATE ; 
 int /*<<< orphan*/  FUNC0 (struct snd_pcm_hw_params*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct snd_pcm_substream*,struct snd_pcm_hw_params*) ; 
 struct snd_ali* FUNC3 (struct snd_pcm_substream*) ; 

__attribute__((used)) static int FUNC4(struct snd_pcm_substream *substream,
				 struct snd_pcm_hw_params *hw_params)
{
	struct snd_ali *chip = FUNC3(substream);
	unsigned int modem_num = chip->num_of_codecs - 1;
	FUNC1(chip->ac97[modem_num], AC97_LINE1_RATE,
		       FUNC0(hw_params));
	FUNC1(chip->ac97[modem_num], AC97_LINE1_LEVEL, 0);
	return FUNC2(substream, hw_params);
}