
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ** mixer_devs ;
 int num_mixers ;
 int unregister_sound_mixer (int) ;

void sound_unload_mixerdev(int dev)
{
 if (dev != -1) {
  mixer_devs[dev] = ((void*)0);
  unregister_sound_mixer(dev<<4);
  num_mixers--;
 }
}
