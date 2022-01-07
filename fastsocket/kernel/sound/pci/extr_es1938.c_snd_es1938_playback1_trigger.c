
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int dummy; } ;
struct es1938 {int active; } ;


 int AUDIO2MODE ;
 int DAC2 ;
 int EINVAL ;
 int ESSSB_IREG_AUDIO2CONTROL1 ;
 int SLIO_REG (struct es1938*,int ) ;




 int outb (int,int ) ;
 int snd_es1938_mixer_write (struct es1938*,int ,int) ;
 struct es1938* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 int udelay (int) ;

__attribute__((used)) static int snd_es1938_playback1_trigger(struct snd_pcm_substream *substream,
     int cmd)
{
 struct es1938 *chip = snd_pcm_substream_chip(substream);
 switch (cmd) {
 case 130:
 case 131:


                snd_es1938_mixer_write(chip, ESSSB_IREG_AUDIO2CONTROL1, 0x92);
                udelay(10);
  snd_es1938_mixer_write(chip, ESSSB_IREG_AUDIO2CONTROL1, 0x93);



  outb(0x0a, SLIO_REG(chip, AUDIO2MODE));
  chip->active |= DAC2;
  break;
 case 129:
 case 128:
  outb(0, SLIO_REG(chip, AUDIO2MODE));
  snd_es1938_mixer_write(chip, ESSSB_IREG_AUDIO2CONTROL1, 0);
  chip->active &= ~DAC2;
  break;
 default:
  return -EINVAL;
 }
 return 0;
}
