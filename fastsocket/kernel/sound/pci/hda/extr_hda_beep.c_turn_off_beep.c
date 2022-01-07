
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_beep {int codec; scalar_t__ playing; int nid; int beep_work; } ;


 int AC_VERB_SET_BEEP_CONTROL ;
 int cancel_work_sync (int *) ;
 int snd_hda_codec_write (int ,int ,int ,int ,int ) ;
 int snd_hda_power_down (int ) ;

__attribute__((used)) static void turn_off_beep(struct hda_beep *beep)
{
 cancel_work_sync(&beep->beep_work);
 if (beep->playing) {

  snd_hda_codec_write(beep->codec, beep->nid, 0,
        AC_VERB_SET_BEEP_CONTROL, 0);
  beep->playing = 0;
  snd_hda_power_down(beep->codec);
 }
}
