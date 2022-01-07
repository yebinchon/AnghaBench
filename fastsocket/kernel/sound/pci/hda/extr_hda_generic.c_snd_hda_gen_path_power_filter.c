
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {int dummy; } ;
typedef int hda_nid_t ;


 unsigned int AC_PWRST_D0 ;
 unsigned int AC_PWRST_D3 ;
 scalar_t__ AC_WID_POWER ;
 int get_wcaps (struct hda_codec*,int ) ;
 scalar_t__ get_wcaps_type (int ) ;
 scalar_t__ is_active_nid_for_any (struct hda_codec*,int ) ;

__attribute__((used)) static unsigned int snd_hda_gen_path_power_filter(struct hda_codec *codec,
        hda_nid_t nid,
        unsigned int power_state)
{
 if (power_state != AC_PWRST_D0)
  return power_state;
 if (get_wcaps_type(get_wcaps(codec, nid)) >= AC_WID_POWER)
  return power_state;
 if (is_active_nid_for_any(codec, nid))
  return power_state;
 return AC_PWRST_D3;
}
