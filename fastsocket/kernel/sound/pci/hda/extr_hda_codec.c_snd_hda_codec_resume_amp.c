
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_6__ {int used; } ;
struct TYPE_4__ {TYPE_3__ buf; } ;
struct hda_codec {int hash_mutex; TYPE_1__ amp_cache; scalar_t__ cached_write; } ;
struct TYPE_5__ {int key; int val; scalar_t__ dirty; } ;
struct hda_amp_info {int * vol; int amp_caps; TYPE_2__ head; } ;
typedef int hda_nid_t ;


 int INFO_AMP_VOL (unsigned int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int put_vol_mute (struct hda_codec*,int ,int,unsigned int,unsigned int,unsigned int,int ) ;
 struct hda_amp_info* snd_array_elem (TYPE_3__*,int) ;

void snd_hda_codec_resume_amp(struct hda_codec *codec)
{
 int i;

 mutex_lock(&codec->hash_mutex);
 codec->cached_write = 0;
 for (i = 0; i < codec->amp_cache.buf.used; i++) {
  struct hda_amp_info *buffer;
  u32 key;
  hda_nid_t nid;
  unsigned int idx, dir, ch;
  struct hda_amp_info info;

  buffer = snd_array_elem(&codec->amp_cache.buf, i);
  if (!buffer->head.dirty)
   continue;
  buffer->head.dirty = 0;
  info = *buffer;
  key = info.head.key;
  if (!key)
   continue;
  nid = key & 0xff;
  idx = (key >> 16) & 0xff;
  dir = (key >> 24) & 0xff;
  for (ch = 0; ch < 2; ch++) {
   if (!(info.head.val & INFO_AMP_VOL(ch)))
    continue;
   mutex_unlock(&codec->hash_mutex);
   put_vol_mute(codec, info.amp_caps, nid, ch, dir, idx,
         info.vol[ch]);
   mutex_lock(&codec->hash_mutex);
  }
 }
 mutex_unlock(&codec->hash_mutex);
}
