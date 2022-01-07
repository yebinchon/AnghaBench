
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_fixup {int dummy; } ;
struct hda_codec {int dummy; } ;


 int HDA_FIXUP_ACT_PRE_PROBE ;
 int hp_zephyr_pin_configs ;
 int snd_hda_add_verbs (struct hda_codec*,int ) ;
 int snd_hda_apply_pincfgs (struct hda_codec*,int ) ;
 int stac92hd83xxx_hp_zephyr_init ;

__attribute__((used)) static void stac92hd83xxx_fixup_hp_zephyr(struct hda_codec *codec,
       const struct hda_fixup *fix, int action)
{
 if (action != HDA_FIXUP_ACT_PRE_PROBE)
  return;

 snd_hda_apply_pincfgs(codec, hp_zephyr_pin_configs);
 snd_hda_add_verbs(codec, stac92hd83xxx_hp_zephyr_init);
}
