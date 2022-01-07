
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct viadev {int dummy; } ;
struct via82xx {int ac97; } ;
struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int rate; struct viadev* private_data; } ;


 int AC97_PCM_LR_ADC_RATE ;
 int snd_ac97_set_rate (int ,int ,int ) ;
 struct via82xx* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 int via686_setup_format (struct via82xx*,struct viadev*,struct snd_pcm_runtime*) ;

__attribute__((used)) static int snd_via686_capture_prepare(struct snd_pcm_substream *substream)
{
 struct via82xx *chip = snd_pcm_substream_chip(substream);
 struct viadev *viadev = substream->runtime->private_data;
 struct snd_pcm_runtime *runtime = substream->runtime;

 snd_ac97_set_rate(chip->ac97, AC97_PCM_LR_ADC_RATE, runtime->rate);
 via686_setup_format(chip, viadev, runtime);
 return 0;
}
