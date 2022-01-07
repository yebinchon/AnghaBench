
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_multi_out {scalar_t__ dig_out_used; } ;
struct hda_codec {int spdif_mutex; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int snd_hda_multi_out_dig_close(struct hda_codec *codec,
    struct hda_multi_out *mout)
{
 mutex_lock(&codec->spdif_mutex);
 mout->dig_out_used = 0;
 mutex_unlock(&codec->spdif_mutex);
 return 0;
}
