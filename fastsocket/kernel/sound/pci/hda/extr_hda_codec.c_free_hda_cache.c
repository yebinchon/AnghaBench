
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_cache_rec {int buf; } ;


 int snd_array_free (int *) ;

__attribute__((used)) static void free_hda_cache(struct hda_cache_rec *cache)
{
 snd_array_free(&cache->buf);
}
