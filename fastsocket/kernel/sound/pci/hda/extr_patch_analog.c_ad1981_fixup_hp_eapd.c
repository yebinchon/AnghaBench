
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct hda_fixup {int dummy; } ;
struct hda_codec {struct ad198x_spec* spec; } ;
struct TYPE_3__ {int hook; } ;
struct TYPE_4__ {TYPE_1__ vmaster_mute; } ;
struct ad198x_spec {int eapd_nid; TYPE_2__ gen; } ;


 int HDA_FIXUP_ACT_PRE_PROBE ;
 int ad_vmaster_eapd_hook ;

__attribute__((used)) static void ad1981_fixup_hp_eapd(struct hda_codec *codec,
     const struct hda_fixup *fix, int action)
{
 struct ad198x_spec *spec = codec->spec;

 if (action == HDA_FIXUP_ACT_PRE_PROBE) {
  spec->gen.vmaster_mute.hook = ad_vmaster_eapd_hook;
  spec->eapd_nid = 0x05;
 }
}
