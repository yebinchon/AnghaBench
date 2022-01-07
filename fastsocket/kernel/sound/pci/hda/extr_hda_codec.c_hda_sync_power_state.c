
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {int dummy; } ;
typedef int hda_nid_t ;


 unsigned int AC_PWRST_ERROR ;
 int AC_VERB_GET_POWER_STATE ;
 unsigned long jiffies ;
 unsigned long msecs_to_jiffies (int) ;
 int msleep (int) ;
 unsigned int snd_hda_codec_read (struct hda_codec*,int ,int ,int ,int ) ;
 scalar_t__ time_after_eq (unsigned long,unsigned long) ;

__attribute__((used)) static unsigned int hda_sync_power_state(struct hda_codec *codec,
      hda_nid_t fg,
      unsigned int power_state)
{
 unsigned long end_time = jiffies + msecs_to_jiffies(500);
 unsigned int state, actual_state;

 for (;;) {
  state = snd_hda_codec_read(codec, fg, 0,
        AC_VERB_GET_POWER_STATE, 0);
  if (state & AC_PWRST_ERROR)
   break;
  actual_state = (state >> 4) & 0x0f;
  if (actual_state == power_state)
   break;
  if (time_after_eq(jiffies, end_time))
   break;

  msleep(1);
 }
 return state;
}
