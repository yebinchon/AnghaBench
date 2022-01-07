
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct hda_codec {TYPE_1__* bus; int cmd_cache; } ;
struct hda_cache_head {unsigned int val; } ;
typedef int hda_nid_t ;
struct TYPE_2__ {int cmd_mutex; } ;


 int build_cmd_cache_key (int ,unsigned int) ;
 struct hda_cache_head* get_hash (int *,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int snd_hda_codec_write_cache (struct hda_codec*,int ,int,unsigned int,unsigned int) ;

int snd_hda_codec_update_cache(struct hda_codec *codec, hda_nid_t nid,
          int flags, unsigned int verb, unsigned int parm)
{
 struct hda_cache_head *c;
 u32 key;


 verb = verb | (parm >> 8);
 parm &= 0xff;
 key = build_cmd_cache_key(nid, verb);
 mutex_lock(&codec->bus->cmd_mutex);
 c = get_hash(&codec->cmd_cache, key);
 if (c && c->val == parm) {
  mutex_unlock(&codec->bus->cmd_mutex);
  return 0;
 }
 mutex_unlock(&codec->bus->cmd_mutex);
 return snd_hda_codec_write_cache(codec, nid, flags, verb, parm);
}
