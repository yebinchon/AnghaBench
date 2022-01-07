
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_beep {int * dev; } ;


 int input_unregister_device (int *) ;
 int turn_off_beep (struct hda_beep*) ;

__attribute__((used)) static void snd_hda_do_detach(struct hda_beep *beep)
{
 input_unregister_device(beep->dev);
 beep->dev = ((void*)0);
 turn_off_beep(beep);
}
