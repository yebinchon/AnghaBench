
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {int dummy; } ;


 unsigned int AC_PWRST_D0 ;
 unsigned int AC_PWRST_D3 ;
 int AC_VERB_GET_CONNECT_SEL ;
 int set_pin_power_state (struct hda_codec*,int,unsigned int*) ;
 int snd_hda_codec_read (struct hda_codec*,int,int ,int ,int) ;
 int update_power_state (struct hda_codec*,int,unsigned int) ;

__attribute__((used)) static void set_widgets_power_state_vt1702(struct hda_codec *codec)
{
 int imux_is_smixer =
 snd_hda_codec_read(codec, 0x13, 0, AC_VERB_GET_CONNECT_SEL, 0x00) == 3;
 unsigned int parm;


 parm = AC_PWRST_D3;
 set_pin_power_state(codec, 0x14, &parm);
 set_pin_power_state(codec, 0x15, &parm);
 set_pin_power_state(codec, 0x18, &parm);
 if (imux_is_smixer)
  parm = AC_PWRST_D0;

 update_power_state(codec, 0x13, parm);
 update_power_state(codec, 0x12, parm);
 update_power_state(codec, 0x1f, parm);
 update_power_state(codec, 0x20, parm);



 parm = AC_PWRST_D3;
 set_pin_power_state(codec, 0x17, &parm);
 set_pin_power_state(codec, 0x16, &parm);

 update_power_state(codec, 0x1a, imux_is_smixer ? AC_PWRST_D0 : parm);
 update_power_state(codec, 0x10, parm);
 update_power_state(codec, 0x1d, parm);
}
