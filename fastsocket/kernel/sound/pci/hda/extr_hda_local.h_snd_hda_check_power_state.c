
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {int dummy; } ;
typedef int hda_nid_t ;


 unsigned int AC_PWRST_ERROR ;
 int AC_VERB_GET_POWER_STATE ;
 unsigned int snd_hda_codec_read (struct hda_codec*,int ,int ,int ,int ) ;

__attribute__((used)) static inline bool
snd_hda_check_power_state(struct hda_codec *codec, hda_nid_t nid,
     unsigned int target_state)
{
 unsigned int state = snd_hda_codec_read(codec, nid, 0,
      AC_VERB_GET_POWER_STATE, 0);
 if (state & AC_PWRST_ERROR)
  return 1;
 state = (state >> 4) & 0x0f;
 return (state == target_state);
}
