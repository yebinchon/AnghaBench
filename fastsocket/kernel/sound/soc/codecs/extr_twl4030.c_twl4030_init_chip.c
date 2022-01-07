
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct snd_soc_codec {int * reg_cache; } ;


 int TWL4030_REG_MISC_SET_2 ;
 int TWL4030_REG_OPTION ;
 int twl4030_codec_enable (struct snd_soc_codec*,int ) ;
 int twl4030_write (struct snd_soc_codec*,int,int ) ;

__attribute__((used)) static void twl4030_init_chip(struct snd_soc_codec *codec)
{
 u8 *cache = codec->reg_cache;
 int i;


 twl4030_codec_enable(codec, 0);


 for (i = TWL4030_REG_OPTION; i <= TWL4030_REG_MISC_SET_2; i++)
  twl4030_write(codec, i, cache[i]);

}
