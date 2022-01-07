
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_spdif_out {scalar_t__ nid; unsigned short ctls; } ;
struct hda_codec {int spdif_mutex; int spdif_out; } ;
typedef scalar_t__ hda_nid_t ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int set_spdif_ctls (struct hda_codec*,scalar_t__,unsigned short,unsigned short) ;
 struct hda_spdif_out* snd_array_elem (int *,int) ;

void snd_hda_spdif_ctls_assign(struct hda_codec *codec, int idx, hda_nid_t nid)
{
 struct hda_spdif_out *spdif;
 unsigned short val;

 mutex_lock(&codec->spdif_mutex);
 spdif = snd_array_elem(&codec->spdif_out, idx);
 if (spdif->nid != nid) {
  spdif->nid = nid;
  val = spdif->ctls;
  set_spdif_ctls(codec, nid, val & 0xff, (val >> 8) & 0xff);
 }
 mutex_unlock(&codec->spdif_mutex);
}
