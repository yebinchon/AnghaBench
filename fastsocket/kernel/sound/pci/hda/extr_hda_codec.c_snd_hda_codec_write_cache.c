
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct hda_codec {unsigned int cached_write; TYPE_1__* bus; int cmd_cache; } ;
struct hda_cache_head {unsigned int val; unsigned int dirty; } ;
typedef int hda_nid_t ;
struct TYPE_2__ {int cmd_mutex; } ;


 int build_cmd_cache_key (int ,unsigned int) ;
 struct hda_cache_head* get_alloc_hash (int *,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int snd_hda_codec_write (struct hda_codec*,int ,int,unsigned int,unsigned int) ;

int snd_hda_codec_write_cache(struct hda_codec *codec, hda_nid_t nid,
         int flags, unsigned int verb, unsigned int parm)
{
 int err;
 struct hda_cache_head *c;
 u32 key;
 unsigned int cache_only;

 cache_only = codec->cached_write;
 if (!cache_only) {
  err = snd_hda_codec_write(codec, nid, flags, verb, parm);
  if (err < 0)
   return err;
 }


 verb = verb | (parm >> 8);
 parm &= 0xff;
 key = build_cmd_cache_key(nid, verb);
 mutex_lock(&codec->bus->cmd_mutex);
 c = get_alloc_hash(&codec->cmd_cache, key);
 if (c) {
  c->val = parm;
  c->dirty = cache_only;
 }
 mutex_unlock(&codec->bus->cmd_mutex);
 return 0;
}
