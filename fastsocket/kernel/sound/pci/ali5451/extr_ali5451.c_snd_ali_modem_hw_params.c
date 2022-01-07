
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int dummy; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct snd_ali {int num_of_codecs; int * ac97; } ;


 int AC97_LINE1_LEVEL ;
 int AC97_LINE1_RATE ;
 int params_rate (struct snd_pcm_hw_params*) ;
 int snd_ac97_write (int ,int ,int ) ;
 int snd_ali_hw_params (struct snd_pcm_substream*,struct snd_pcm_hw_params*) ;
 struct snd_ali* snd_pcm_substream_chip (struct snd_pcm_substream*) ;

__attribute__((used)) static int snd_ali_modem_hw_params(struct snd_pcm_substream *substream,
     struct snd_pcm_hw_params *hw_params)
{
 struct snd_ali *chip = snd_pcm_substream_chip(substream);
 unsigned int modem_num = chip->num_of_codecs - 1;
 snd_ac97_write(chip->ac97[modem_num], AC97_LINE1_RATE,
         params_rate(hw_params));
 snd_ac97_write(chip->ac97[modem_num], AC97_LINE1_LEVEL, 0);
 return snd_ali_hw_params(substream, hw_params);
}
