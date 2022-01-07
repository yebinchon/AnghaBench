
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ** synth_devs ;

void sound_unload_synthdev(int dev)
{
 if (dev != -1)
  synth_devs[dev] = ((void*)0);
}
