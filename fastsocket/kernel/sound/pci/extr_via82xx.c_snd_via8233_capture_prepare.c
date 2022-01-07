
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct viadev {int dummy; } ;
struct via82xx {int ac97; int * rates; } ;
struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {scalar_t__ format; int channels; int rate; struct viadev* private_data; } ;


 int AC97_PCM_LR_ADC_RATE ;
 int EINVAL ;
 int OFFSET_STOP_IDX ;
 int OFS_CAPTURE_FIFO ;
 scalar_t__ SNDRV_PCM_FORMAT_S16_LE ;
 int VIA8233_REG_TYPE_16BIT ;
 int VIA8233_REG_TYPE_STEREO ;
 int VIADEV_REG (struct viadev*,int ) ;
 int VIA_REG_CAPTURE_FIFO_ENABLE ;
 int outb (int ,int ) ;
 int outl (int,int ) ;
 int snd_ac97_set_rate (int ,int ,int ) ;
 struct via82xx* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 int snd_via82xx_channel_reset (struct via82xx*,struct viadev*) ;
 int snd_via82xx_codec_ready (struct via82xx*,int ) ;
 int snd_via82xx_set_table_ptr (struct via82xx*,struct viadev*) ;
 int udelay (int) ;
 scalar_t__ via_lock_rate (int *,int ) ;

__attribute__((used)) static int snd_via8233_capture_prepare(struct snd_pcm_substream *substream)
{
 struct via82xx *chip = snd_pcm_substream_chip(substream);
 struct viadev *viadev = substream->runtime->private_data;
 struct snd_pcm_runtime *runtime = substream->runtime;

 if (via_lock_rate(&chip->rates[1], runtime->rate) < 0)
  return -EINVAL;
 snd_ac97_set_rate(chip->ac97, AC97_PCM_LR_ADC_RATE, runtime->rate);
 snd_via82xx_channel_reset(chip, viadev);
 snd_via82xx_set_table_ptr(chip, viadev);
 outb(VIA_REG_CAPTURE_FIFO_ENABLE, VIADEV_REG(viadev, OFS_CAPTURE_FIFO));
 outl((runtime->format == SNDRV_PCM_FORMAT_S16_LE ? VIA8233_REG_TYPE_16BIT : 0) |
      (runtime->channels > 1 ? VIA8233_REG_TYPE_STEREO : 0) |
      0xff000000,
      VIADEV_REG(viadev, OFFSET_STOP_IDX));
 udelay(20);
 snd_via82xx_codec_ready(chip, 0);
 return 0;
}
