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
struct sis7019 {int /*<<< orphan*/ * ac97; } ;

/* Variables and functions */
 int /*<<< orphan*/  AC97_PCM_LR_ADC_RATE ; 
 int /*<<< orphan*/  FUNC0 (struct snd_pcm_hw_params*) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_pcm_hw_params*) ; 
 int FUNC2 (struct snd_pcm_substream*,struct snd_pcm_hw_params*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct snd_pcm_substream*,int /*<<< orphan*/ ) ; 
 struct sis7019* FUNC5 (struct snd_pcm_substream*) ; 

__attribute__((used)) static int FUNC6(struct snd_pcm_substream *substream,
					struct snd_pcm_hw_params *hw_params)
{
	struct sis7019 *sis = FUNC5(substream);
	int rc;

	rc = FUNC3(sis->ac97[0], AC97_PCM_LR_ADC_RATE,
						FUNC1(hw_params));
	if (rc)
		goto out;

	rc = FUNC4(substream,
					FUNC0(hw_params));
	if (rc < 0)
		goto out;

	rc = FUNC2(substream, hw_params);

out:
	return rc;
}