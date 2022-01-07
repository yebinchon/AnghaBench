
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_sb {unsigned int capture_format; int mode; int reg_lock; int mixer_lock; int force_mode16; int c_period_size; } ;
struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int channels; } ;


 int SB_DSP_CAPTURE_FILT ;
 unsigned int SB_DSP_DMA8_OFF ;
 unsigned int SB_DSP_HI_INPUT_AUTO ;
 unsigned int SB_DSP_INPUT ;
 unsigned int SB_DSP_MONO_8BIT ;
 unsigned int SB_DSP_SPEAKER_OFF ;
 int SB_MODE_CAPTURE_8 ;
 int SB_MODE_HALT ;


 struct snd_sb* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 int snd_sbdsp_command (struct snd_sb*,unsigned int) ;
 int snd_sbdsp_reset (struct snd_sb*) ;
 int snd_sbmixer_write (struct snd_sb*,int ,int ) ;
 int spin_lock (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock (int *) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int snd_sb8_capture_trigger(struct snd_pcm_substream *substream,
       int cmd)
{
 unsigned long flags;
 struct snd_sb *chip = snd_pcm_substream_chip(substream);
 unsigned int count;

 spin_lock_irqsave(&chip->reg_lock, flags);
 switch (cmd) {
 case 129:
  snd_sbdsp_command(chip, chip->capture_format);
  if (chip->capture_format == SB_DSP_INPUT) {
   count = chip->c_period_size - 1;
   snd_sbdsp_command(chip, count & 0xff);
   snd_sbdsp_command(chip, count >> 8);
  }
  break;
 case 128:
  if (chip->capture_format == SB_DSP_HI_INPUT_AUTO) {
   struct snd_pcm_runtime *runtime = substream->runtime;
   snd_sbdsp_reset(chip);
   if (runtime->channels > 1) {

    spin_lock(&chip->mixer_lock);
    snd_sbmixer_write(chip, SB_DSP_CAPTURE_FILT, chip->force_mode16);
    spin_unlock(&chip->mixer_lock);

    snd_sbdsp_command(chip, SB_DSP_MONO_8BIT);
   }
  } else {
   snd_sbdsp_command(chip, SB_DSP_DMA8_OFF);
  }
  snd_sbdsp_command(chip, SB_DSP_SPEAKER_OFF);
 }
 spin_unlock_irqrestore(&chip->reg_lock, flags);
 chip->mode = (cmd == 129) ? SB_MODE_CAPTURE_8 : SB_MODE_HALT;
 return 0;
}
