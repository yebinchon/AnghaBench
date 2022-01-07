
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {int dummy; } ;
typedef int hda_nid_t ;


 int AC_VERB_SET_POWER_STATE ;
 scalar_t__ snd_hda_check_power_state (struct hda_codec*,int ,unsigned int) ;
 int snd_hda_codec_write (struct hda_codec*,int ,int ,int ,unsigned int) ;

__attribute__((used)) static void update_power_state(struct hda_codec *codec, hda_nid_t nid,
          unsigned int parm)
{
 if (snd_hda_check_power_state(codec, nid, parm))
  return;
 snd_hda_codec_write(codec, nid, 0, AC_VERB_SET_POWER_STATE, parm);
}
