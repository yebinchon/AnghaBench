
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {struct snd_soc_codec* codec; } ;
struct snd_soc_codec {int (* read ) (struct snd_soc_codec*,int ) ;int (* write ) (struct snd_soc_codec*,int ,int) ;} ;


 int AD1938_DAC_CTRL2 ;
 int AD1938_DAC_MASTER_MUTE ;
 int stub1 (struct snd_soc_codec*,int ) ;
 int stub2 (struct snd_soc_codec*,int ,int) ;

__attribute__((used)) static int ad1938_mute(struct snd_soc_dai *dai, int mute)
{
 struct snd_soc_codec *codec = dai->codec;
 int reg;

 reg = codec->read(codec, AD1938_DAC_CTRL2);
 reg = (mute > 0) ? reg | AD1938_DAC_MASTER_MUTE : reg &
  (~AD1938_DAC_MASTER_MUTE);
 codec->write(codec, AD1938_DAC_CTRL2, reg);

 return 0;
}
