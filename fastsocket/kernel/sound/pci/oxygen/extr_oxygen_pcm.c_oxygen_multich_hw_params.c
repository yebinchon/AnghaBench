
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_substream {int dummy; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct TYPE_2__ {int dac_i2s_format; int (* set_dac_params ) (struct oxygen*,struct snd_pcm_hw_params*) ;} ;
struct oxygen {int mutex; TYPE_1__ model; int reg_lock; } ;


 int OXYGEN_I2S_BITS_MASK ;
 int OXYGEN_I2S_FORMAT_MASK ;
 int OXYGEN_I2S_MCLK_MASK ;
 int OXYGEN_I2S_MULTICH_FORMAT ;
 int OXYGEN_I2S_RATE_MASK ;
 int OXYGEN_MULTICH_FORMAT_MASK ;
 int OXYGEN_MULTICH_FORMAT_SHIFT ;
 int OXYGEN_PLAY_CHANNELS ;
 int OXYGEN_PLAY_CHANNELS_MASK ;
 int OXYGEN_PLAY_FORMAT ;
 int PCM_MULTICH ;
 int get_mclk (struct oxygen*,int ,struct snd_pcm_hw_params*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int oxygen_format (struct snd_pcm_hw_params*) ;
 int oxygen_hw_params (struct snd_pcm_substream*,struct snd_pcm_hw_params*) ;
 int oxygen_i2s_bits (struct snd_pcm_hw_params*) ;
 int oxygen_play_channels (struct snd_pcm_hw_params*) ;
 int oxygen_rate (struct snd_pcm_hw_params*) ;
 int oxygen_update_dac_routing (struct oxygen*) ;
 int oxygen_update_spdif_source (struct oxygen*) ;
 int oxygen_write16_masked (struct oxygen*,int ,int,int) ;
 int oxygen_write8_masked (struct oxygen*,int ,int,int ) ;
 struct oxygen* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int stub1 (struct oxygen*,struct snd_pcm_hw_params*) ;

__attribute__((used)) static int oxygen_multich_hw_params(struct snd_pcm_substream *substream,
        struct snd_pcm_hw_params *hw_params)
{
 struct oxygen *chip = snd_pcm_substream_chip(substream);
 int err;

 err = oxygen_hw_params(substream, hw_params);
 if (err < 0)
  return err;

 mutex_lock(&chip->mutex);
 spin_lock_irq(&chip->reg_lock);
 oxygen_write8_masked(chip, OXYGEN_PLAY_CHANNELS,
        oxygen_play_channels(hw_params),
        OXYGEN_PLAY_CHANNELS_MASK);
 oxygen_write8_masked(chip, OXYGEN_PLAY_FORMAT,
        oxygen_format(hw_params) << OXYGEN_MULTICH_FORMAT_SHIFT,
        OXYGEN_MULTICH_FORMAT_MASK);
 oxygen_write16_masked(chip, OXYGEN_I2S_MULTICH_FORMAT,
         oxygen_rate(hw_params) |
         chip->model.dac_i2s_format |
         get_mclk(chip, PCM_MULTICH, hw_params) |
         oxygen_i2s_bits(hw_params),
         OXYGEN_I2S_RATE_MASK |
         OXYGEN_I2S_FORMAT_MASK |
         OXYGEN_I2S_MCLK_MASK |
         OXYGEN_I2S_BITS_MASK);
 oxygen_update_spdif_source(chip);
 spin_unlock_irq(&chip->reg_lock);

 chip->model.set_dac_params(chip, hw_params);
 oxygen_update_dac_routing(chip);
 mutex_unlock(&chip->mutex);
 return 0;
}
