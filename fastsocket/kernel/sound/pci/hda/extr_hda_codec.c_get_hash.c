
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
typedef size_t u16 ;
struct hda_cache_rec {size_t* hash; int buf; } ;
struct hda_cache_head {size_t key; size_t next; } ;


 scalar_t__ ARRAY_SIZE (size_t*) ;
 struct hda_cache_head* snd_array_elem (int *,size_t) ;

__attribute__((used)) static struct hda_cache_head *get_hash(struct hda_cache_rec *cache, u32 key)
{
 u16 idx = key % (u16)ARRAY_SIZE(cache->hash);
 u16 cur = cache->hash[idx];
 struct hda_cache_head *info;

 while (cur != 0xffff) {
  info = snd_array_elem(&cache->buf, cur);
  if (info->key == key)
   return info;
  cur = info->next;
 }
 return ((void*)0);
}
