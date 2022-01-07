
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hda_spdif_out {scalar_t__ nid; } ;
struct TYPE_2__ {int used; } ;
struct hda_codec {TYPE_1__ spdif_out; } ;
typedef scalar_t__ hda_nid_t ;


 struct hda_spdif_out* snd_array_elem (TYPE_1__*,int) ;

struct hda_spdif_out *snd_hda_spdif_out_of_nid(struct hda_codec *codec,
            hda_nid_t nid)
{
 int i;
 for (i = 0; i < codec->spdif_out.used; i++) {
  struct hda_spdif_out *spdif =
    snd_array_elem(&codec->spdif_out, i);
  if (spdif->nid == nid)
   return spdif;
 }
 return ((void*)0);
}
