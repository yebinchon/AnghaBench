
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_sb {int mixer_lock; int mode; } ;
struct snd_pcm_substream {int dummy; } ;


 int ALS4K_CR1E_FIFO2_CONTROL ;
 int EINVAL ;
 int SB_RATE_LOCK_CAPTURE ;




 int capture_cmd (struct snd_sb*) ;
 int snd_als4_cr_write (struct snd_sb*,int ,int ) ;
 struct snd_sb* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int snd_als4000_capture_trigger(struct snd_pcm_substream *substream, int cmd)
{
 struct snd_sb *chip = snd_pcm_substream_chip(substream);
 int result = 0;







 spin_lock(&chip->mixer_lock);
 switch (cmd) {
 case 130:
 case 131:
  chip->mode |= SB_RATE_LOCK_CAPTURE;
  snd_als4_cr_write(chip, ALS4K_CR1E_FIFO2_CONTROL,
        capture_cmd(chip));
  break;
 case 129:
 case 128:
  chip->mode &= ~SB_RATE_LOCK_CAPTURE;
  snd_als4_cr_write(chip, ALS4K_CR1E_FIFO2_CONTROL,
        capture_cmd(chip));
  break;
 default:
  result = -EINVAL;
  break;
 }
 spin_unlock(&chip->mixer_lock);
 return result;
}
