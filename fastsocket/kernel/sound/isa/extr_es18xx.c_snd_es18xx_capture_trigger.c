
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int dummy; } ;
struct snd_es18xx {int active; } ;


 int ADC1 ;
 int EINVAL ;




 int snd_es18xx_write (struct snd_es18xx*,int,int) ;
 struct snd_es18xx* snd_pcm_substream_chip (struct snd_pcm_substream*) ;

__attribute__((used)) static int snd_es18xx_capture_trigger(struct snd_pcm_substream *substream,
          int cmd)
{
        struct snd_es18xx *chip = snd_pcm_substream_chip(substream);

 switch (cmd) {
 case 130:
 case 131:
  if (chip->active & ADC1)
   return 0;
  chip->active |= ADC1;

                snd_es18xx_write(chip, 0xB8, 0x0f);
  break;
 case 129:
 case 128:
  if (!(chip->active & ADC1))
   return 0;
  chip->active &= ~ADC1;

                snd_es18xx_write(chip, 0xB8, 0x00);
  break;
 default:
  return -EINVAL;
 }

 return 0;
}
