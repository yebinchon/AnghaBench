
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_jack_tbl {void* gated_jack; void* gating_jack; } ;
struct hda_codec {int dummy; } ;
typedef void* hda_nid_t ;


 int EINVAL ;
 struct hda_jack_tbl* snd_hda_jack_tbl_get (struct hda_codec*,void*) ;

int snd_hda_jack_set_gating_jack(struct hda_codec *codec, hda_nid_t gated_nid,
     hda_nid_t gating_nid)
{
 struct hda_jack_tbl *gated = snd_hda_jack_tbl_get(codec, gated_nid);
 struct hda_jack_tbl *gating = snd_hda_jack_tbl_get(codec, gating_nid);

 if (!gated || !gating)
  return -EINVAL;

 gated->gating_jack = gating_nid;
 gating->gated_jack = gated_nid;

 return 0;
}
