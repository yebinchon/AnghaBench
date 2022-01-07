
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {struct hda_beep* beep; } ;
struct hda_beep {scalar_t__ dev; int unregister_work; int register_work; } ;


 int cancel_delayed_work (int *) ;
 int cancel_work_sync (int *) ;
 int kfree (struct hda_beep*) ;
 int snd_hda_do_detach (struct hda_beep*) ;

void snd_hda_detach_beep_device(struct hda_codec *codec)
{
 struct hda_beep *beep = codec->beep;
 if (beep) {
  cancel_work_sync(&beep->register_work);
  cancel_delayed_work(&beep->unregister_work);
  if (beep->dev)
   snd_hda_do_detach(beep);
  codec->beep = ((void*)0);
  kfree(beep);
 }
}
