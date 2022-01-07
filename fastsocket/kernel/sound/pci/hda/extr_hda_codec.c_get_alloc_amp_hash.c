
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hda_codec {int amp_cache; } ;
struct hda_amp_info {int dummy; } ;


 scalar_t__ get_alloc_hash (int *,int ) ;

__attribute__((used)) static inline struct hda_amp_info *
get_alloc_amp_hash(struct hda_codec *codec, u32 key)
{
 return (struct hda_amp_info *)get_alloc_hash(&codec->amp_cache, key);
}
