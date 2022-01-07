
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {int dummy; } ;
typedef int hda_nid_t ;


 int AC_PAR_POWER_STATE ;
 int snd_hda_param_read (struct hda_codec*,int ,int ) ;

__attribute__((used)) static bool snd_hda_codec_get_supported_ps(struct hda_codec *codec, hda_nid_t fg,
    unsigned int power_state)
{
 int sup = snd_hda_param_read(codec, fg, AC_PAR_POWER_STATE);

 if (sup == -1)
  return 0;
 if (sup & power_state)
  return 1;
 else
  return 0;
}
