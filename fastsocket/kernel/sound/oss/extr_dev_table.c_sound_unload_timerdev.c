
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ** sound_timer_devs ;

void sound_unload_timerdev(int dev)
{
 if (dev != -1)
  sound_timer_devs[dev] = ((void*)0);
}
