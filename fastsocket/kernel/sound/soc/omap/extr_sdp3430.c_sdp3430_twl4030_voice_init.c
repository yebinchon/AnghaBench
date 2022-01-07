
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_codec {unsigned short (* read ) (struct snd_soc_codec*,int ) ;int (* write ) (struct snd_soc_codec*,int ,unsigned short) ;} ;


 int TWL4030_REG_VOICE_IF ;
 unsigned short TWL4030_VIF_DIN_EN ;
 unsigned short TWL4030_VIF_DOUT_EN ;
 unsigned short TWL4030_VIF_EN ;
 unsigned short stub1 (struct snd_soc_codec*,int ) ;
 int stub2 (struct snd_soc_codec*,int ,unsigned short) ;

__attribute__((used)) static int sdp3430_twl4030_voice_init(struct snd_soc_codec *codec)
{
 unsigned short reg;


 reg = codec->read(codec, TWL4030_REG_VOICE_IF);
 reg |= TWL4030_VIF_DIN_EN | TWL4030_VIF_DOUT_EN | TWL4030_VIF_EN;
 codec->write(codec, TWL4030_REG_VOICE_IF, reg);

 return 0;
}
