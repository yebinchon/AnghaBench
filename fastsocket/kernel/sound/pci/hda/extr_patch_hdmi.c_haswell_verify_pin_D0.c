
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {int dummy; } ;
typedef int hda_nid_t ;


 int AC_AMP_GET_LEFT ;
 int AC_AMP_GET_OUTPUT ;
 int AC_AMP_GET_RIGHT ;
 int AC_AMP_SET_OUTPUT ;
 int AC_AMP_SET_RIGHT ;
 int AC_PWRST_ACTUAL ;
 int AC_PWRST_ACTUAL_SHIFT ;
 int AC_PWRST_D0 ;
 int AC_VERB_GET_AMP_GAIN_MUTE ;
 int AC_VERB_GET_POWER_STATE ;
 int AC_VERB_SET_AMP_GAIN_MUTE ;
 int AC_VERB_SET_POWER_STATE ;
 int msleep (int) ;
 int snd_hda_check_power_state (struct hda_codec*,int ,int) ;
 int snd_hda_codec_read (struct hda_codec*,int ,int ,int ,int) ;
 int snd_hda_codec_write (struct hda_codec*,int ,int ,int ,int) ;
 int snd_printd (char*,int ,int,...) ;

__attribute__((used)) static void haswell_verify_pin_D0(struct hda_codec *codec,
  hda_nid_t cvt_nid, hda_nid_t nid)
{
 int pwr, lamp, ramp;




 if (!snd_hda_check_power_state(codec, cvt_nid, AC_PWRST_D0))
  snd_hda_codec_write(codec, cvt_nid, 0, AC_VERB_SET_POWER_STATE, AC_PWRST_D0);

 if (!snd_hda_check_power_state(codec, nid, AC_PWRST_D0)) {
  snd_hda_codec_write(codec, nid, 0, AC_VERB_SET_POWER_STATE,
        AC_PWRST_D0);
  msleep(40);
  pwr = snd_hda_codec_read(codec, nid, 0, AC_VERB_GET_POWER_STATE, 0);
  pwr = (pwr & AC_PWRST_ACTUAL) >> AC_PWRST_ACTUAL_SHIFT;
  snd_printd("Haswell HDMI audio: Power for pin 0x%x is now D%d\n", nid, pwr);
 }

 lamp = snd_hda_codec_read(codec, nid, 0,
      AC_VERB_GET_AMP_GAIN_MUTE,
      AC_AMP_GET_LEFT | AC_AMP_GET_OUTPUT);
 ramp = snd_hda_codec_read(codec, nid, 0,
      AC_VERB_GET_AMP_GAIN_MUTE,
      AC_AMP_GET_RIGHT | AC_AMP_GET_OUTPUT);
 if (lamp != ramp) {
  snd_hda_codec_write(codec, nid, 0, AC_VERB_SET_AMP_GAIN_MUTE,
        AC_AMP_SET_RIGHT | AC_AMP_SET_OUTPUT | lamp);

  lamp = snd_hda_codec_read(codec, nid, 0,
      AC_VERB_GET_AMP_GAIN_MUTE,
      AC_AMP_GET_LEFT | AC_AMP_GET_OUTPUT);
  ramp = snd_hda_codec_read(codec, nid, 0,
      AC_VERB_GET_AMP_GAIN_MUTE,
      AC_AMP_GET_RIGHT | AC_AMP_GET_OUTPUT);
  snd_printd("Haswell HDMI audio: Mute after set on pin 0x%x: [0x%x 0x%x]\n", nid, lamp, ramp);
 }
}
