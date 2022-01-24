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
struct snd_pcm_substream {int dummy; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct snd_at73c213 {TYPE_1__* ssc; } ;
struct TYPE_2__ {int /*<<< orphan*/  regs; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  TFMR ; 
 int /*<<< orphan*/  TFMR_DATNB ; 
 int /*<<< orphan*/  FUNC1 (struct snd_pcm_hw_params*) ; 
 int FUNC2 (struct snd_pcm_hw_params*) ; 
 int FUNC3 (struct snd_pcm_substream*,int /*<<< orphan*/ ) ; 
 struct snd_at73c213* FUNC4 (struct snd_pcm_substream*) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC7(struct snd_pcm_substream *substream,
				 struct snd_pcm_hw_params *hw_params)
{
	struct snd_at73c213 *chip = FUNC4(substream);
	int channels = FUNC2(hw_params);
	int val;

	val = FUNC5(chip->ssc->regs, TFMR);
	val = FUNC0(TFMR_DATNB, channels - 1, val);
	FUNC6(chip->ssc->regs, TFMR, val);

	return FUNC3(substream,
					FUNC1(hw_params));
}