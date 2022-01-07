
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {int dummy; } ;
typedef int hda_nid_t ;


 int AC_AMPCAP_MUTE_SHIFT ;
 int AC_AMPCAP_NUM_STEPS_SHIFT ;
 int AC_AMPCAP_OFFSET_SHIFT ;
 int AC_AMPCAP_STEP_SIZE_SHIFT ;
 int AC_WCAP_IN_AMP ;
 int HDA_INPUT ;
 int get_wcaps (struct hda_codec*,int ) ;
 int snd_hda_override_amp_caps (struct hda_codec*,int ,int ,int) ;
 int snd_hda_override_wcaps (struct hda_codec*,int ,int) ;

__attribute__((used)) static void override_mic_boost(struct hda_codec *codec, hda_nid_t pin,
          int offset, int num_steps, int step_size)
{
 snd_hda_override_wcaps(codec, pin,
          get_wcaps(codec, pin) | AC_WCAP_IN_AMP);
 snd_hda_override_amp_caps(codec, pin, HDA_INPUT,
      (offset << AC_AMPCAP_OFFSET_SHIFT) |
      (num_steps << AC_AMPCAP_NUM_STEPS_SHIFT) |
      (step_size << AC_AMPCAP_STEP_SIZE_SHIFT) |
      (0 << AC_AMPCAP_MUTE_SHIFT));
}
