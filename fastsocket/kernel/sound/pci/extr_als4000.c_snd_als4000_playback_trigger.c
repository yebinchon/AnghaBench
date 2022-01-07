
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_sb {int reg_lock; int mode; } ;
struct snd_pcm_substream {int dummy; } ;
struct TYPE_2__ {int dma_off; int dma_on; } ;


 int EINVAL ;
 int SB_RATE_LOCK_PLAYBACK ;




 TYPE_1__ playback_cmd (struct snd_sb*) ;
 struct snd_sb* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 int snd_sbdsp_command (struct snd_sb*,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int snd_als4000_playback_trigger(struct snd_pcm_substream *substream, int cmd)
{
 struct snd_sb *chip = snd_pcm_substream_chip(substream);
 int result = 0;

 spin_lock(&chip->reg_lock);
 switch (cmd) {
 case 130:
 case 131:
  chip->mode |= SB_RATE_LOCK_PLAYBACK;
  snd_sbdsp_command(chip, playback_cmd(chip).dma_on);
  break;
 case 129:
 case 128:
  snd_sbdsp_command(chip, playback_cmd(chip).dma_off);
  chip->mode &= ~SB_RATE_LOCK_PLAYBACK;
  break;
 default:
  result = -EINVAL;
  break;
 }
 spin_unlock(&chip->reg_lock);
 return result;
}
