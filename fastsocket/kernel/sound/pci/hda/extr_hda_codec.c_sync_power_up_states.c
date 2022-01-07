
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {unsigned int (* power_filter ) (struct hda_codec*,int ,unsigned int) ;int num_nodes; int start_nid; } ;
typedef int hda_nid_t ;


 unsigned int AC_PWRST_D0 ;
 int AC_VERB_SET_POWER_STATE ;
 unsigned int AC_WCAP_POWER ;
 unsigned int get_wcaps (struct hda_codec*,int ) ;
 int snd_hda_check_power_state (struct hda_codec*,int ,unsigned int) ;
 int snd_hda_codec_write (struct hda_codec*,int ,int ,int ,unsigned int) ;
 unsigned int stub1 (struct hda_codec*,int ,unsigned int) ;

__attribute__((used)) static void sync_power_up_states(struct hda_codec *codec)
{
 hda_nid_t nid = codec->start_nid;
 int i;


 if (!codec->power_filter)
  return;

 for (i = 0; i < codec->num_nodes; i++, nid++) {
  unsigned int wcaps = get_wcaps(codec, nid);
  unsigned int target;
  if (!(wcaps & AC_WCAP_POWER))
   continue;
  target = codec->power_filter(codec, nid, AC_PWRST_D0);
  if (target == AC_PWRST_D0)
   continue;
  if (!snd_hda_check_power_state(codec, nid, target))
   snd_hda_codec_write(codec, nid, 0,
         AC_VERB_SET_POWER_STATE, target);
 }
}
