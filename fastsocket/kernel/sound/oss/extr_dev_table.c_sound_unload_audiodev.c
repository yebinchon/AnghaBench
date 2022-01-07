
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DMAbuf_deinit (int) ;
 int ** audio_devs ;
 int unregister_sound_dsp (int) ;

void sound_unload_audiodev(int dev)
{
 if (dev != -1) {
  DMAbuf_deinit(dev);
  audio_devs[dev] = ((void*)0);
  unregister_sound_dsp((dev<<4)+3);
 }
}
