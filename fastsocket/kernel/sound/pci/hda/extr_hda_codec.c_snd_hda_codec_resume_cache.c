
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int used; } ;
struct TYPE_3__ {TYPE_2__ buf; } ;
struct hda_codec {int hash_mutex; TYPE_1__ cmd_cache; scalar_t__ cached_write; } ;
struct hda_cache_head {int val; scalar_t__ dirty; int key; } ;


 int get_cmd_cache_cmd (int ) ;
 int get_cmd_cache_nid (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct hda_cache_head* snd_array_elem (TYPE_2__*,int) ;
 int snd_hda_codec_write (struct hda_codec*,int ,int ,int ,int ) ;

void snd_hda_codec_resume_cache(struct hda_codec *codec)
{
 int i;

 mutex_lock(&codec->hash_mutex);
 codec->cached_write = 0;
 for (i = 0; i < codec->cmd_cache.buf.used; i++) {
  struct hda_cache_head *buffer;
  u32 key;

  buffer = snd_array_elem(&codec->cmd_cache.buf, i);
  key = buffer->key;
  if (!key)
   continue;
  if (!buffer->dirty)
   continue;
  buffer->dirty = 0;
  mutex_unlock(&codec->hash_mutex);
  snd_hda_codec_write(codec, get_cmd_cache_nid(key), 0,
        get_cmd_cache_cmd(key), buffer->val);
  mutex_lock(&codec->hash_mutex);
 }
 mutex_unlock(&codec->hash_mutex);
}
