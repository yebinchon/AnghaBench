
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ indep_hp_enabled; } ;
struct via_spec {TYPE_1__ gen; scalar_t__ dmic_enabled; } ;
struct hda_codec {struct via_spec* spec; } ;


 unsigned int AC_PWRST_D0 ;
 unsigned int AC_PWRST_D3 ;
 int AC_VERB_GET_CONNECT_SEL ;
 int set_pin_power_state (struct hda_codec*,int,unsigned int*) ;
 scalar_t__ smart51_enabled (struct hda_codec*) ;
 int snd_hda_codec_read (struct hda_codec*,int,int ,int ,int) ;
 unsigned int snd_hda_jack_detect (struct hda_codec*,int) ;
 int update_power_state (struct hda_codec*,int,unsigned int) ;

__attribute__((used)) static void set_widgets_power_state_vt1716S(struct hda_codec *codec)
{
 struct via_spec *spec = codec->spec;
 int imux_is_smixer;
 unsigned int parm;
 unsigned int mono_out, present;

 imux_is_smixer =
 (snd_hda_codec_read(codec, 0x17, 0,
       AC_VERB_GET_CONNECT_SEL, 0x00) == 5);


 parm = AC_PWRST_D3;
 set_pin_power_state(codec, 0x1a, &parm);
 set_pin_power_state(codec, 0x1b, &parm);
 set_pin_power_state(codec, 0x1e, &parm);
 if (imux_is_smixer)
  parm = AC_PWRST_D0;

 update_power_state(codec, 0x17, parm);
 update_power_state(codec, 0x13, parm);

 parm = AC_PWRST_D3;
 set_pin_power_state(codec, 0x1e, &parm);

 if (spec->dmic_enabled)
  set_pin_power_state(codec, 0x22, &parm);
 else
  update_power_state(codec, 0x22, AC_PWRST_D3);


 update_power_state(codec, 0x26, parm);
 update_power_state(codec, 0x14, parm);



 parm = AC_PWRST_D3;
 set_pin_power_state(codec, 0x19, &parm);

 if (smart51_enabled(codec))
  set_pin_power_state(codec, 0x1b, &parm);
 update_power_state(codec, 0x18, parm);
 update_power_state(codec, 0x11, parm);


 parm = AC_PWRST_D3;
 set_pin_power_state(codec, 0x23, &parm);

 if (smart51_enabled(codec))
  set_pin_power_state(codec, 0x1a, &parm);
 update_power_state(codec, 0x27, parm);


 if (smart51_enabled(codec))
  set_pin_power_state(codec, 0x1e, &parm);
 update_power_state(codec, 0x25, parm);



 present = snd_hda_jack_detect(codec, 0x1c);

 if (present)
  mono_out = 0;
 else {
  present = snd_hda_jack_detect(codec, 0x1d);
  if (!spec->gen.indep_hp_enabled && present)
   mono_out = 0;
  else
   mono_out = 1;
 }
 parm = mono_out ? AC_PWRST_D0 : AC_PWRST_D3;
 update_power_state(codec, 0x28, parm);
 update_power_state(codec, 0x29, parm);
 update_power_state(codec, 0x2a, parm);


 parm = AC_PWRST_D3;
 set_pin_power_state(codec, 0x1c, &parm);
 set_pin_power_state(codec, 0x1d, &parm);

 if (spec->gen.indep_hp_enabled)
  update_power_state(codec, 0x25, parm);



 update_power_state(codec, 0x16, imux_is_smixer ? AC_PWRST_D0 : parm);
 update_power_state(codec, 0x10, mono_out ? AC_PWRST_D0 : parm);
}
