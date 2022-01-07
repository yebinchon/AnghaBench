
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sigmatel_spec {scalar_t__ eapd_switch; } ;
struct hda_codec {struct sigmatel_spec* spec; } ;


 int dell_m6_pin_configs ;
 int snd_hda_apply_pincfgs (struct hda_codec*,int ) ;

__attribute__((used)) static void stac92hd73xx_fixup_dell(struct hda_codec *codec)
{
 struct sigmatel_spec *spec = codec->spec;

 snd_hda_apply_pincfgs(codec, dell_m6_pin_configs);
 spec->eapd_switch = 0;
}
