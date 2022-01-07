
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct snd_soc_codec {int (* hw_read ) (struct snd_soc_codec*,int) ;} ;


 int ARRAY_SIZE (int ) ;
 int stub1 (struct snd_soc_codec*,int) ;
 int wm8903_reg_defaults ;

__attribute__((used)) static void wm8903_sync_reg_cache(struct snd_soc_codec *codec, u16 *cache)
{
 int i;


 for (i = 0; i < ARRAY_SIZE(wm8903_reg_defaults); i++)
  cache[i] = codec->hw_read(codec, i);
}
