
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {struct hda_beep* beep; } ;
struct hda_beep {int enabled; scalar_t__ mode; int unregister_work; int register_work; } ;


 scalar_t__ HDA_BEEP_MODE_SWREG ;
 int HZ ;
 int cancel_delayed_work (int *) ;
 int schedule_delayed_work (int *,int ) ;
 int schedule_work (int *) ;
 int turn_off_beep (struct hda_beep*) ;

int snd_hda_enable_beep_device(struct hda_codec *codec, int enable)
{
 struct hda_beep *beep = codec->beep;
 if (!beep)
  return 0;
 enable = !!enable;
 if (beep->enabled != enable) {
  beep->enabled = enable;
  if (!enable)
   turn_off_beep(beep);
  if (beep->mode == HDA_BEEP_MODE_SWREG) {
   if (enable) {
    cancel_delayed_work(&beep->unregister_work);
    schedule_work(&beep->register_work);
   } else {
    schedule_delayed_work(&beep->unregister_work,
            HZ);
   }
  }
  return 1;
 }
 return 0;
}
