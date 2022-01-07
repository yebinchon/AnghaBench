
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int my_mixerdev; } ;
typedef TYPE_1__ sb_devc ;


 int kfree (int ) ;
 int * mixer_devs ;
 int sbmixnum ;
 int sound_unload_mixerdev (size_t) ;

void sb_mixer_unload(sb_devc *devc)
{
 if (devc->my_mixerdev == -1)
  return;

 kfree(mixer_devs[devc->my_mixerdev]);
 sound_unload_mixerdev(devc->my_mixerdev);
 sbmixnum--;
}
