
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_fixup {int dummy; } ;
struct hda_codec {int dummy; } ;
typedef int hda_nid_t ;


 int HDA_FIXUP_ACT_PRE_PROBE ;
 int HDA_FIXUP_ACT_PROBE ;
 int snd_hda_override_conn_list (struct hda_codec*,int,int,int*) ;

__attribute__((used)) static void alc889_fixup_dac_route(struct hda_codec *codec,
       const struct hda_fixup *fix, int action)
{
 if (action == HDA_FIXUP_ACT_PRE_PROBE) {

  hda_nid_t conn1[2] = { 0x0c, 0x0d };
  hda_nid_t conn2[2] = { 0x0e, 0x0f };
  snd_hda_override_conn_list(codec, 0x14, 2, conn1);
  snd_hda_override_conn_list(codec, 0x15, 2, conn1);
  snd_hda_override_conn_list(codec, 0x18, 2, conn2);
  snd_hda_override_conn_list(codec, 0x1a, 2, conn2);
 } else if (action == HDA_FIXUP_ACT_PROBE) {

  hda_nid_t conn[5] = { 0x0c, 0x0d, 0x0e, 0x0f, 0x26 };
  snd_hda_override_conn_list(codec, 0x14, 5, conn);
  snd_hda_override_conn_list(codec, 0x15, 5, conn);
  snd_hda_override_conn_list(codec, 0x18, 5, conn);
  snd_hda_override_conn_list(codec, 0x1a, 5, conn);
 }
}
