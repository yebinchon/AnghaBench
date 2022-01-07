
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_codec {int dummy; } ;


 int twl4030_codec_enable (struct snd_soc_codec*,int ) ;

__attribute__((used)) static void twl4030_power_down(struct snd_soc_codec *codec)
{

 twl4030_codec_enable(codec, 0);
}
