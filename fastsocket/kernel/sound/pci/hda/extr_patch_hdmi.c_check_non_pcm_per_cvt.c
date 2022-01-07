
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_spdif_out {int status; } ;
struct hda_codec {int spdif_mutex; } ;
typedef int hda_nid_t ;


 int IEC958_AES0_NONAUDIO ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct hda_spdif_out* snd_hda_spdif_out_of_nid (struct hda_codec*,int ) ;

__attribute__((used)) static bool check_non_pcm_per_cvt(struct hda_codec *codec, hda_nid_t cvt_nid)
{
 struct hda_spdif_out *spdif;
 bool non_pcm;

 mutex_lock(&codec->spdif_mutex);
 spdif = snd_hda_spdif_out_of_nid(codec, cvt_nid);
 non_pcm = !!(spdif->status & IEC958_AES0_NONAUDIO);
 mutex_unlock(&codec->spdif_mutex);
 return non_pcm;
}
