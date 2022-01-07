
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ indep_hp_enabled; } ;
struct via_spec {scalar_t__ codec_type; TYPE_1__ gen; } ;
struct hda_codec {struct via_spec* spec; } ;


 unsigned int AC_PWRST_D0 ;
 unsigned int AC_PWRST_D3 ;
 int AC_VERB_GET_CONNECT_SEL ;
 scalar_t__ VT1802 ;
 int is_aa_path_mute (struct hda_codec*) ;
 int set_pin_power_state (struct hda_codec*,int,unsigned int*) ;
 int snd_hda_codec_read (struct hda_codec*,int,int ,int ,int) ;
 unsigned int snd_hda_jack_detect (struct hda_codec*,int) ;
 int update_power_state (struct hda_codec*,int,unsigned int) ;

__attribute__((used)) static void set_widgets_power_state_vt2002P(struct hda_codec *codec)
{
 struct via_spec *spec = codec->spec;
 int imux_is_smixer;
 unsigned int parm;
 unsigned int present;

 imux_is_smixer =
 snd_hda_codec_read(codec, 0x1e, 0, AC_VERB_GET_CONNECT_SEL, 0x00) == 3;


 parm = AC_PWRST_D3;
 set_pin_power_state(codec, 0x29, &parm);
 set_pin_power_state(codec, 0x2a, &parm);
 set_pin_power_state(codec, 0x2b, &parm);
 parm = AC_PWRST_D0;

 update_power_state(codec, 0x1e, parm);
 update_power_state(codec, 0x1f, parm);
 update_power_state(codec, 0x10, parm);
 update_power_state(codec, 0x11, parm);



 update_power_state(codec, 0x8, parm);

 if (spec->codec_type == VT1802) {

  parm = AC_PWRST_D3;
  set_pin_power_state(codec, 0x28, &parm);
  update_power_state(codec, 0x18, parm);
  update_power_state(codec, 0x38, parm);
 } else {

  parm = AC_PWRST_D3;
  set_pin_power_state(codec, 0x26, &parm);
  update_power_state(codec, 0x1c, parm);
  update_power_state(codec, 0x37, parm);
 }

 if (spec->codec_type == VT1802) {

  parm = AC_PWRST_D3;
  set_pin_power_state(codec, 0x25, &parm);
  update_power_state(codec, 0x15, parm);
  update_power_state(codec, 0x35, parm);
 } else {

  parm = AC_PWRST_D3;
  set_pin_power_state(codec, 0x25, &parm);
  update_power_state(codec, 0x19, parm);
  update_power_state(codec, 0x35, parm);
 }

 if (spec->gen.indep_hp_enabled)
  update_power_state(codec, 0x9, AC_PWRST_D0);



 present = snd_hda_jack_detect(codec, 0x25);

 parm = AC_PWRST_D3;
 set_pin_power_state(codec, 0x24, &parm);
 parm = present ? AC_PWRST_D3 : AC_PWRST_D0;
 if (spec->codec_type == VT1802)
  update_power_state(codec, 0x14, parm);
 else
  update_power_state(codec, 0x18, parm);
 update_power_state(codec, 0x34, parm);


 present = snd_hda_jack_detect(codec, 0x26);

 parm = present ? AC_PWRST_D3 : AC_PWRST_D0;
 if (spec->codec_type == VT1802) {

  update_power_state(codec, 0x33, parm);
  update_power_state(codec, 0x1c, parm);
  update_power_state(codec, 0x3c, parm);
 } else {

  update_power_state(codec, 0x31, parm);
  update_power_state(codec, 0x17, parm);
  update_power_state(codec, 0x3b, parm);
 }

 if (imux_is_smixer || !is_aa_path_mute(codec))
  update_power_state(codec, 0x21, AC_PWRST_D0);
 else
  update_power_state(codec, 0x21, AC_PWRST_D3);
}
