
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct hda_fixup {int dummy; } ;
struct hda_codec {struct ad198x_spec* spec; } ;
struct TYPE_5__ {int * speaker_pins; int * line_out_pins; int line_out_type; } ;
struct TYPE_4__ {int hook; } ;
struct TYPE_6__ {TYPE_2__ autocfg; TYPE_1__ vmaster_mute; } ;
struct ad198x_spec {TYPE_3__ gen; int eapd_nid; } ;


 int AUTO_PIN_SPEAKER_OUT ;


 int ad_vmaster_eapd_hook ;

__attribute__((used)) static void ad1884_fixup_hp_eapd(struct hda_codec *codec,
     const struct hda_fixup *fix, int action)
{
 struct ad198x_spec *spec = codec->spec;

 switch (action) {
 case 129:
  spec->gen.vmaster_mute.hook = ad_vmaster_eapd_hook;
  break;
 case 128:
  if (spec->gen.autocfg.line_out_type == AUTO_PIN_SPEAKER_OUT)
   spec->eapd_nid = spec->gen.autocfg.line_out_pins[0];
  else
   spec->eapd_nid = spec->gen.autocfg.speaker_pins[0];
  break;
 }
}
