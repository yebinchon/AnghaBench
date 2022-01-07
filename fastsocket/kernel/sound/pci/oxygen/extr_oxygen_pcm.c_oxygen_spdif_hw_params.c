
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int dummy; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct oxygen {int mutex; int reg_lock; } ;


 int OXYGEN_PLAY_FORMAT ;
 int OXYGEN_SPDIF_CONTROL ;
 int OXYGEN_SPDIF_FORMAT_MASK ;
 int OXYGEN_SPDIF_FORMAT_SHIFT ;
 int OXYGEN_SPDIF_OUT_ENABLE ;
 int OXYGEN_SPDIF_OUT_RATE_MASK ;
 int OXYGEN_SPDIF_OUT_RATE_SHIFT ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int oxygen_clear_bits32 (struct oxygen*,int ,int ) ;
 int oxygen_format (struct snd_pcm_hw_params*) ;
 int oxygen_hw_params (struct snd_pcm_substream*,struct snd_pcm_hw_params*) ;
 int oxygen_rate (struct snd_pcm_hw_params*) ;
 int oxygen_update_spdif_source (struct oxygen*) ;
 int oxygen_write32_masked (struct oxygen*,int ,int,int ) ;
 int oxygen_write8_masked (struct oxygen*,int ,int,int ) ;
 struct oxygen* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int oxygen_spdif_hw_params(struct snd_pcm_substream *substream,
      struct snd_pcm_hw_params *hw_params)
{
 struct oxygen *chip = snd_pcm_substream_chip(substream);
 int err;

 err = oxygen_hw_params(substream, hw_params);
 if (err < 0)
  return err;

 mutex_lock(&chip->mutex);
 spin_lock_irq(&chip->reg_lock);
 oxygen_clear_bits32(chip, OXYGEN_SPDIF_CONTROL,
       OXYGEN_SPDIF_OUT_ENABLE);
 oxygen_write8_masked(chip, OXYGEN_PLAY_FORMAT,
        oxygen_format(hw_params) << OXYGEN_SPDIF_FORMAT_SHIFT,
        OXYGEN_SPDIF_FORMAT_MASK);
 oxygen_write32_masked(chip, OXYGEN_SPDIF_CONTROL,
         oxygen_rate(hw_params) << OXYGEN_SPDIF_OUT_RATE_SHIFT,
         OXYGEN_SPDIF_OUT_RATE_MASK);
 oxygen_update_spdif_source(chip);
 spin_unlock_irq(&chip->reg_lock);
 mutex_unlock(&chip->mutex);
 return 0;
}
