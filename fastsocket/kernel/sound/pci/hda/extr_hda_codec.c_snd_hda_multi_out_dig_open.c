
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_multi_out {scalar_t__ dig_out_used; int dig_out_nid; } ;
struct hda_codec {int spdif_mutex; } ;


 scalar_t__ HDA_DIG_ANALOG_DUP ;
 scalar_t__ HDA_DIG_EXCLUSIVE ;
 int cleanup_dig_out_stream (struct hda_codec*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int snd_hda_multi_out_dig_open(struct hda_codec *codec,
          struct hda_multi_out *mout)
{
 mutex_lock(&codec->spdif_mutex);
 if (mout->dig_out_used == HDA_DIG_ANALOG_DUP)

  cleanup_dig_out_stream(codec, mout->dig_out_nid);
 mout->dig_out_used = HDA_DIG_EXCLUSIVE;
 mutex_unlock(&codec->spdif_mutex);
 return 0;
}
