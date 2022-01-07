
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {struct snd_soc_codec* codec; } ;
struct snd_soc_codec {struct cs4270_private* private_data; } ;
struct cs4270_private {int manual_mute; } ;


 int CS4270_MUTE ;
 int CS4270_MUTE_DAC_A ;
 int CS4270_MUTE_DAC_B ;
 int snd_soc_read (struct snd_soc_codec*,int ) ;
 int snd_soc_write (struct snd_soc_codec*,int ,int) ;

__attribute__((used)) static int cs4270_dai_mute(struct snd_soc_dai *dai, int mute)
{
 struct snd_soc_codec *codec = dai->codec;
 struct cs4270_private *cs4270 = codec->private_data;
 int reg6;

 reg6 = snd_soc_read(codec, CS4270_MUTE);

 if (mute)
  reg6 |= CS4270_MUTE_DAC_A | CS4270_MUTE_DAC_B;
 else {
  reg6 &= ~(CS4270_MUTE_DAC_A | CS4270_MUTE_DAC_B);
  reg6 |= cs4270->manual_mute;
 }

 return snd_soc_write(codec, CS4270_MUTE, reg6);
}
