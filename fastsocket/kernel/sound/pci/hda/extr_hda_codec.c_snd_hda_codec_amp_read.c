
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {int hash_mutex; } ;
struct hda_amp_info {unsigned int* vol; } ;
typedef int hda_nid_t ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct hda_amp_info* update_amp_hash (struct hda_codec*,int ,int,int,int,int) ;

int snd_hda_codec_amp_read(struct hda_codec *codec, hda_nid_t nid, int ch,
      int direction, int index)
{
 struct hda_amp_info *info;
 unsigned int val = 0;

 mutex_lock(&codec->hash_mutex);
 info = update_amp_hash(codec, nid, ch, direction, index, 0);
 if (info)
  val = info->vol[ch];
 mutex_unlock(&codec->hash_mutex);
 return val;
}
