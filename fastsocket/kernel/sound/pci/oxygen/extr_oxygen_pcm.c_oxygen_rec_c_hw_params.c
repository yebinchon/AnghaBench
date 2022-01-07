
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int dummy; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct oxygen {int reg_lock; } ;


 int OXYGEN_REC_FORMAT ;
 int OXYGEN_REC_FORMAT_C_MASK ;
 int OXYGEN_REC_FORMAT_C_SHIFT ;
 int oxygen_format (struct snd_pcm_hw_params*) ;
 int oxygen_hw_params (struct snd_pcm_substream*,struct snd_pcm_hw_params*) ;
 int oxygen_write8_masked (struct oxygen*,int ,int,int ) ;
 struct oxygen* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int oxygen_rec_c_hw_params(struct snd_pcm_substream *substream,
      struct snd_pcm_hw_params *hw_params)
{
 struct oxygen *chip = snd_pcm_substream_chip(substream);
 int err;

 err = oxygen_hw_params(substream, hw_params);
 if (err < 0)
  return err;

 spin_lock_irq(&chip->reg_lock);
 oxygen_write8_masked(chip, OXYGEN_REC_FORMAT,
        oxygen_format(hw_params) << OXYGEN_REC_FORMAT_C_SHIFT,
        OXYGEN_REC_FORMAT_C_MASK);
 spin_unlock_irq(&chip->reg_lock);
 return 0;
}
