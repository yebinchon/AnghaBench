
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ** midi_devs ;
 int unregister_sound_midi (int) ;

void sound_unload_mididev(int dev)
{
 if (dev != -1) {
  midi_devs[dev] = ((void*)0);
  unregister_sound_midi((dev<<4)+2);
 }
}
