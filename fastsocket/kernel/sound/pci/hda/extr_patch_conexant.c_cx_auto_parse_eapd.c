
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {scalar_t__ start_nid; scalar_t__ num_nodes; struct conexant_spec* spec; } ;
struct conexant_spec {int num_eapds; int dynamic_eapd; scalar_t__* eapds; } ;
typedef scalar_t__ hda_nid_t ;


 int AC_PINCAP_EAPD ;
 scalar_t__ AC_WID_PIN ;
 int ARRAY_SIZE (scalar_t__*) ;
 int get_wcaps (struct hda_codec*,scalar_t__) ;
 scalar_t__ get_wcaps_type (int ) ;
 int snd_hda_query_pin_caps (struct hda_codec*,scalar_t__) ;

__attribute__((used)) static void cx_auto_parse_eapd(struct hda_codec *codec)
{
 struct conexant_spec *spec = codec->spec;
 hda_nid_t nid, end_nid;

 end_nid = codec->start_nid + codec->num_nodes;
 for (nid = codec->start_nid; nid < end_nid; nid++) {
  if (get_wcaps_type(get_wcaps(codec, nid)) != AC_WID_PIN)
   continue;
  if (!(snd_hda_query_pin_caps(codec, nid) & AC_PINCAP_EAPD))
   continue;
  spec->eapds[spec->num_eapds++] = nid;
  if (spec->num_eapds >= ARRAY_SIZE(spec->eapds))
   break;
 }







 if (spec->num_eapds > 2)
  spec->dynamic_eapd = 1;
}
