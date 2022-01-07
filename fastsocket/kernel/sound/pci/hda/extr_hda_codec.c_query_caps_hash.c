
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct hda_codec {int hash_mutex; } ;
struct TYPE_2__ {int val; } ;
struct hda_amp_info {int amp_caps; TYPE_1__ head; } ;
typedef int hda_nid_t ;


 int INFO_AMP_CAPS ;
 struct hda_amp_info* get_alloc_amp_hash (struct hda_codec*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int write_caps_hash (struct hda_codec*,int ,unsigned int) ;

__attribute__((used)) static unsigned int
query_caps_hash(struct hda_codec *codec, hda_nid_t nid, int dir, u32 key,
  unsigned int (*func)(struct hda_codec *, hda_nid_t, int))
{
 struct hda_amp_info *info;
 unsigned int val;

 mutex_lock(&codec->hash_mutex);
 info = get_alloc_amp_hash(codec, key);
 if (!info) {
  mutex_unlock(&codec->hash_mutex);
  return 0;
 }
 if (!(info->head.val & INFO_AMP_CAPS)) {
  mutex_unlock(&codec->hash_mutex);
  val = func(codec, nid, dir);
  write_caps_hash(codec, key, val);
 } else {
  val = info->amp_caps;
  mutex_unlock(&codec->hash_mutex);
 }
 return val;
}
