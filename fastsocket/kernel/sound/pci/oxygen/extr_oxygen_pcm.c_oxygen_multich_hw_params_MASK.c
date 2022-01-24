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
struct TYPE_2__ {int dac_i2s_format; int /*<<< orphan*/  (* set_dac_params ) (struct oxygen*,struct snd_pcm_hw_params*) ;} ;
struct oxygen {int /*<<< orphan*/  mutex; TYPE_1__ model; int /*<<< orphan*/  reg_lock; } ;

/* Variables and functions */
 int OXYGEN_I2S_BITS_MASK ; 
 int OXYGEN_I2S_FORMAT_MASK ; 
 int OXYGEN_I2S_MCLK_MASK ; 
 int /*<<< orphan*/  OXYGEN_I2S_MULTICH_FORMAT ; 
 int OXYGEN_I2S_RATE_MASK ; 
 int /*<<< orphan*/  OXYGEN_MULTICH_FORMAT_MASK ; 
 int OXYGEN_MULTICH_FORMAT_SHIFT ; 
 int /*<<< orphan*/  OXYGEN_PLAY_CHANNELS ; 
 int /*<<< orphan*/  OXYGEN_PLAY_CHANNELS_MASK ; 
 int /*<<< orphan*/  OXYGEN_PLAY_FORMAT ; 
 int /*<<< orphan*/  PCM_MULTICH ; 
 int FUNC0 (struct oxygen*,int /*<<< orphan*/ ,struct snd_pcm_hw_params*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct snd_pcm_hw_params*) ; 
 int FUNC4 (struct snd_pcm_substream*,struct snd_pcm_hw_params*) ; 
 int FUNC5 (struct snd_pcm_hw_params*) ; 
 int FUNC6 (struct snd_pcm_hw_params*) ; 
 int FUNC7 (struct snd_pcm_hw_params*) ; 
 int /*<<< orphan*/  FUNC8 (struct oxygen*) ; 
 int /*<<< orphan*/  FUNC9 (struct oxygen*) ; 
 int /*<<< orphan*/  FUNC10 (struct oxygen*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC11 (struct oxygen*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 struct oxygen* FUNC12 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (struct oxygen*,struct snd_pcm_hw_params*) ; 

__attribute__((used)) static int FUNC16(struct snd_pcm_substream *substream,
				    struct snd_pcm_hw_params *hw_params)
{
	struct oxygen *chip = FUNC12(substream);
	int err;

	err = FUNC4(substream, hw_params);
	if (err < 0)
		return err;

	FUNC1(&chip->mutex);
	FUNC13(&chip->reg_lock);
	FUNC11(chip, OXYGEN_PLAY_CHANNELS,
			     FUNC6(hw_params),
			     OXYGEN_PLAY_CHANNELS_MASK);
	FUNC11(chip, OXYGEN_PLAY_FORMAT,
			     FUNC3(hw_params) << OXYGEN_MULTICH_FORMAT_SHIFT,
			     OXYGEN_MULTICH_FORMAT_MASK);
	FUNC10(chip, OXYGEN_I2S_MULTICH_FORMAT,
			      FUNC7(hw_params) |
			      chip->model.dac_i2s_format |
			      FUNC0(chip, PCM_MULTICH, hw_params) |
			      FUNC5(hw_params),
			      OXYGEN_I2S_RATE_MASK |
			      OXYGEN_I2S_FORMAT_MASK |
			      OXYGEN_I2S_MCLK_MASK |
			      OXYGEN_I2S_BITS_MASK);
	FUNC9(chip);
	FUNC14(&chip->reg_lock);

	chip->model.set_dac_params(chip, hw_params);
	FUNC8(chip);
	FUNC2(&chip->mutex);
	return 0;
}