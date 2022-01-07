
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct audio_operations {scalar_t__ open_mode; int go; int enable_bits; TYPE_1__* d; } ;
struct TYPE_2__ {int (* trigger ) (int,int) ;} ;


 struct audio_operations** audio_devs ;
 int num_audiodevs ;
 int stub1 (int,int) ;

void DMAbuf_start_devices(unsigned int devmask)
{
 struct audio_operations *adev;
 int dev;

 for (dev = 0; dev < num_audiodevs; dev++) {
  if (!(devmask & (1 << dev)))
   continue;
  if (!(adev = audio_devs[dev]))
   continue;
  if (adev->open_mode == 0)
   continue;
  if (adev->go)
   continue;

  adev->go = 1;
  if (adev->d->trigger)
   adev->d->trigger(dev,adev->enable_bits * adev->go);
 }
}
