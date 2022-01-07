
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct snd_soc_codec {int * reg_cache; } ;


 int AK4642_CACHEREGNUM ;
 int ak4642_write (struct snd_soc_codec*,int,int ) ;

__attribute__((used)) static int ak4642_sync(struct snd_soc_codec *codec)
{
 u16 *cache = codec->reg_cache;
 int i, r = 0;

 for (i = 0; i < AK4642_CACHEREGNUM; i++)
  r |= ak4642_write(codec, i, cache[i]);

 return r;
}
