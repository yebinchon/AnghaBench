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
struct oxygen {int /*<<< orphan*/  mutex; int /*<<< orphan*/  reg_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  OXYGEN_PLAY_FORMAT ; 
 int /*<<< orphan*/  OXYGEN_SPDIF_CONTROL ; 
 int /*<<< orphan*/  OXYGEN_SPDIF_FORMAT_MASK ; 
 int OXYGEN_SPDIF_FORMAT_SHIFT ; 
 int /*<<< orphan*/  OXYGEN_SPDIF_OUT_ENABLE ; 
 int /*<<< orphan*/  OXYGEN_SPDIF_OUT_RATE_MASK ; 
 int OXYGEN_SPDIF_OUT_RATE_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct oxygen*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct snd_pcm_hw_params*) ; 
 int FUNC4 (struct snd_pcm_substream*,struct snd_pcm_hw_params*) ; 
 int FUNC5 (struct snd_pcm_hw_params*) ; 
 int /*<<< orphan*/  FUNC6 (struct oxygen*) ; 
 int /*<<< orphan*/  FUNC7 (struct oxygen*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct oxygen*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 struct oxygen* FUNC9 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC12(struct snd_pcm_substream *substream,
				  struct snd_pcm_hw_params *hw_params)
{
	struct oxygen *chip = FUNC9(substream);
	int err;

	err = FUNC4(substream, hw_params);
	if (err < 0)
		return err;

	FUNC0(&chip->mutex);
	FUNC10(&chip->reg_lock);
	FUNC2(chip, OXYGEN_SPDIF_CONTROL,
			    OXYGEN_SPDIF_OUT_ENABLE);
	FUNC8(chip, OXYGEN_PLAY_FORMAT,
			     FUNC3(hw_params) << OXYGEN_SPDIF_FORMAT_SHIFT,
			     OXYGEN_SPDIF_FORMAT_MASK);
	FUNC7(chip, OXYGEN_SPDIF_CONTROL,
			      FUNC5(hw_params) << OXYGEN_SPDIF_OUT_RATE_SHIFT,
			      OXYGEN_SPDIF_OUT_RATE_MASK);
	FUNC6(chip);
	FUNC11(&chip->reg_lock);
	FUNC1(&chip->mutex);
	return 0;
}