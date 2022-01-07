
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_cache_rec {int buf; struct hda_cache_rec* hash; } ;


 int memset (struct hda_cache_rec*,int,int) ;
 int snd_array_init (int *,unsigned int,int) ;

__attribute__((used)) static void init_hda_cache(struct hda_cache_rec *cache,
         unsigned int record_size)
{
 memset(cache, 0, sizeof(*cache));
 memset(cache->hash, 0xff, sizeof(cache->hash));
 snd_array_init(&cache->buf, record_size, 64);
}
