
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {struct ca0132_spec* spec; } ;
struct ca0132_spec {int shared_out_nid; int shared_mic_nid; } ;
typedef int hda_nid_t ;





__attribute__((used)) static bool ca0132_is_vnode_effective(struct hda_codec *codec,
         hda_nid_t vnid,
         hda_nid_t *shared_nid)
{
 struct ca0132_spec *spec = codec->spec;
 hda_nid_t nid;

 switch (vnid) {
 case 128:
  nid = spec->shared_out_nid;
  break;
 case 129:
  nid = spec->shared_mic_nid;
  break;
 default:
  return 0;
 }

 if (shared_nid)
  *shared_nid = nid;

 return 1;
}
