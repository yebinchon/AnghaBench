
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_sb {int mode; int reg_lock; } ;
struct snd_pcm_substream {int dummy; } ;


 int EINVAL ;
 int SB_DSP_DMA16_OFF ;
 int SB_DSP_DMA16_ON ;
 int SB_DSP_DMA8_OFF ;
 int SB_DSP_DMA8_ON ;
 int SB_MODE_CAPTURE_16 ;
 int SB_MODE_PLAYBACK_16 ;
 int SB_RATE_LOCK_CAPTURE ;
 int SB_RATE_LOCK_PLAYBACK ;




 struct snd_sb* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 int snd_sbdsp_command (struct snd_sb*,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int snd_sb16_playback_trigger(struct snd_pcm_substream *substream,
         int cmd)
{
 struct snd_sb *chip = snd_pcm_substream_chip(substream);
 int result = 0;

 spin_lock(&chip->reg_lock);
 switch (cmd) {
 case 130:
 case 131:
  chip->mode |= SB_RATE_LOCK_PLAYBACK;
  snd_sbdsp_command(chip, chip->mode & SB_MODE_PLAYBACK_16 ? SB_DSP_DMA16_ON : SB_DSP_DMA8_ON);
  break;
 case 129:
 case 128:
  snd_sbdsp_command(chip, chip->mode & SB_MODE_PLAYBACK_16 ? SB_DSP_DMA16_OFF : SB_DSP_DMA8_OFF);

  if (chip->mode & SB_RATE_LOCK_CAPTURE)
   snd_sbdsp_command(chip, chip->mode & SB_MODE_CAPTURE_16 ? SB_DSP_DMA16_ON : SB_DSP_DMA8_ON);
  chip->mode &= ~SB_RATE_LOCK_PLAYBACK;
  break;
 default:
  result = -EINVAL;
 }
 spin_unlock(&chip->reg_lock);
 return result;
}
