
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
 int set_pin_power_state (struct hda_codec*,int,unsigned int*) ;
 unsigned int snd_hda_jack_detect (struct hda_codec*,int) ;
 int update_power_state (struct hda_codec*,int,unsigned int) ;

__attribute__((used)) static void set_widgets_power_state_vt1812(struct hda_codec *codec)
{
 struct via_spec *spec = codec->spec;
 unsigned int parm;
 unsigned int present;


 parm = AC_PWRST_D3;
 set_pin_power_state(codec, 0x29, &parm);
 set_pin_power_state(codec, 0x2a, &parm);
 set_pin_power_state(codec, 0x2b, &parm);
 parm = AC_PWRST_D0;

 update_power_state(codec, 0x1e, parm);
 update_power_state(codec, 0x1f, parm);
 update_power_state(codec, 0x10, parm);
 update_power_state(codec, 0x11, parm);



 update_power_state(codec, 0x8, AC_PWRST_D0);


 parm = AC_PWRST_D3;
 set_pin_power_state(codec, 0x28, &parm);
 update_power_state(codec, 0x18, parm);
 update_power_state(codec, 0x38, parm);


 parm = AC_PWRST_D3;
 set_pin_power_state(codec, 0x25, &parm);
 update_power_state(codec, 0x15, parm);
 update_power_state(codec, 0x35, parm);
 if (spec->gen.indep_hp_enabled)
  update_power_state(codec, 0x9, AC_PWRST_D0);



 present = snd_hda_jack_detect(codec, 0x25);

 parm = AC_PWRST_D3;
 set_pin_power_state(codec, 0x24, &parm);
 if (present) {
  update_power_state(codec, 0x14, AC_PWRST_D3);
  update_power_state(codec, 0x34, AC_PWRST_D3);
 } else {
  update_power_state(codec, 0x14, AC_PWRST_D0);
  update_power_state(codec, 0x34, AC_PWRST_D0);
 }




 present = snd_hda_jack_detect(codec, 0x28);

 parm = AC_PWRST_D3;
 set_pin_power_state(codec, 0x31, &parm);
 if (present) {
  update_power_state(codec, 0x1c, AC_PWRST_D3);
  update_power_state(codec, 0x3c, AC_PWRST_D3);
  update_power_state(codec, 0x3e, AC_PWRST_D3);
 } else {
  update_power_state(codec, 0x1c, AC_PWRST_D0);
  update_power_state(codec, 0x3c, AC_PWRST_D0);
  update_power_state(codec, 0x3e, AC_PWRST_D0);
 }


 parm = AC_PWRST_D3;
 set_pin_power_state(codec, 0x33, &parm);
 update_power_state(codec, 0x1d, parm);
 update_power_state(codec, 0x3d, parm);

}
