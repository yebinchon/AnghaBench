
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct hda_codec {int hash_mutex; } ;
struct TYPE_2__ {int val; } ;
struct hda_amp_info {unsigned int amp_caps; TYPE_1__ head; } ;


 int EINVAL ;
 int INFO_AMP_CAPS ;
 struct hda_amp_info* get_alloc_amp_hash (struct hda_codec*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int write_caps_hash(struct hda_codec *codec, u32 key, unsigned int val)
{
 struct hda_amp_info *info;

 mutex_lock(&codec->hash_mutex);
 info = get_alloc_amp_hash(codec, key);
 if (!info) {
  mutex_unlock(&codec->hash_mutex);
  return -EINVAL;
 }
 info->amp_caps = val;
 info->head.val |= INFO_AMP_CAPS;
 mutex_unlock(&codec->hash_mutex);
 return 0;
}
