
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ indep_hp_enabled; } ;
struct via_spec {TYPE_1__ gen; } ;
struct hda_codec {struct via_spec* spec; } ;


 unsigned int AC_PWRST_D0 ;
 unsigned int AC_PWRST_D3 ;
 int AC_VERB_GET_CONNECT_SEL ;
 int set_pin_power_state (struct hda_codec*,int,unsigned int*) ;
 scalar_t__ smart51_enabled (struct hda_codec*) ;
 int snd_hda_codec_read (struct hda_codec*,int,int ,int ,int) ;
 int update_power_state (struct hda_codec*,int,unsigned int) ;

__attribute__((used)) static void set_widgets_power_state_vt1718S(struct hda_codec *codec)
{
 struct via_spec *spec = codec->spec;
 int imux_is_smixer;
 unsigned int parm, parm2;

 imux_is_smixer =
 snd_hda_codec_read(codec, 0x1e, 0, AC_VERB_GET_CONNECT_SEL, 0x00) == 5;


 parm = AC_PWRST_D3;
 set_pin_power_state(codec, 0x29, &parm);
 set_pin_power_state(codec, 0x2a, &parm);
 set_pin_power_state(codec, 0x2b, &parm);
 if (imux_is_smixer)
  parm = AC_PWRST_D0;

 update_power_state(codec, 0x1e, parm);
 update_power_state(codec, 0x1f, parm);
 update_power_state(codec, 0x10, parm);
 update_power_state(codec, 0x11, parm);



 parm = AC_PWRST_D3;
 set_pin_power_state(codec, 0x27, &parm);
 update_power_state(codec, 0x1a, parm);
 parm2 = parm;


 parm = AC_PWRST_D3;
 set_pin_power_state(codec, 0x26, &parm);
 if (smart51_enabled(codec))
  set_pin_power_state(codec, 0x2b, &parm);
 update_power_state(codec, 0xa, parm);


 parm = AC_PWRST_D3;
 set_pin_power_state(codec, 0x24, &parm);
 if (!spec->gen.indep_hp_enabled)
  set_pin_power_state(codec, 0x28, &parm);
 update_power_state(codec, 0x8, parm);
 if (!spec->gen.indep_hp_enabled && parm2 != AC_PWRST_D3)
  parm = parm2;
 update_power_state(codec, 0xb, parm);

 update_power_state(codec, 0x21, imux_is_smixer ? AC_PWRST_D0 : parm);


 parm = AC_PWRST_D3;
 set_pin_power_state(codec, 0x25, &parm);
 if (smart51_enabled(codec))
  set_pin_power_state(codec, 0x2a, &parm);
 update_power_state(codec, 0x9, parm);

 if (spec->gen.indep_hp_enabled) {

  parm = AC_PWRST_D3;
  set_pin_power_state(codec, 0x28, &parm);
  update_power_state(codec, 0x1b, parm);
  update_power_state(codec, 0x34, parm);
  update_power_state(codec, 0xc, parm);
 }
}
