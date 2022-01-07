
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hda_codec {int hash_mutex; } ;
struct TYPE_2__ {int val; } ;
struct hda_amp_info {unsigned int* vol; TYPE_1__ head; } ;
typedef int hda_nid_t ;


 unsigned int AC_AMP_GET_INPUT ;
 unsigned int AC_AMP_GET_LEFT ;
 unsigned int AC_AMP_GET_OUTPUT ;
 unsigned int AC_AMP_GET_RIGHT ;
 int AC_VERB_GET_AMP_GAIN_MUTE ;
 int HDA_HASH_KEY (int ,int,int) ;
 int HDA_OUTPUT ;
 int INFO_AMP_VOL (int) ;
 struct hda_amp_info* get_alloc_amp_hash (struct hda_codec*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 unsigned int snd_hda_codec_read (struct hda_codec*,int ,int ,int ,unsigned int) ;

__attribute__((used)) static struct hda_amp_info *
update_amp_hash(struct hda_codec *codec, hda_nid_t nid, int ch,
  int direction, int index, bool init_only)
{
 struct hda_amp_info *info;
 unsigned int parm, val = 0;
 bool val_read = 0;

 retry:
 info = get_alloc_amp_hash(codec, HDA_HASH_KEY(nid, direction, index));
 if (!info)
  return ((void*)0);
 if (!(info->head.val & INFO_AMP_VOL(ch))) {
  if (!val_read) {
   mutex_unlock(&codec->hash_mutex);
   parm = ch ? AC_AMP_GET_RIGHT : AC_AMP_GET_LEFT;
   parm |= direction == HDA_OUTPUT ?
    AC_AMP_GET_OUTPUT : AC_AMP_GET_INPUT;
   parm |= index;
   val = snd_hda_codec_read(codec, nid, 0,
     AC_VERB_GET_AMP_GAIN_MUTE, parm);
   val &= 0xff;
   val_read = 1;
   mutex_lock(&codec->hash_mutex);
   goto retry;
  }
  info->vol[ch] = val;
  info->head.val |= INFO_AMP_VOL(ch);
 } else if (init_only)
  return ((void*)0);
 return info;
}
