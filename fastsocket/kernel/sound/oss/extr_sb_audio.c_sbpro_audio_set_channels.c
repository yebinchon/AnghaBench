
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {short channels; scalar_t__ model; int speed; } ;
typedef TYPE_1__ sb_devc ;
struct TYPE_4__ {TYPE_1__* devc; } ;


 scalar_t__ MDL_SBPRO ;
 TYPE_2__** audio_devs ;
 int sbpro_audio_set_speed (int,int ) ;

__attribute__((used)) static short sbpro_audio_set_channels(int dev, short channels)
{
 sb_devc *devc = audio_devs[dev]->devc;

 if (channels == 1 || channels == 2)
 {
  if (channels != devc->channels)
  {
   devc->channels = channels;
   if (devc->model == MDL_SBPRO && devc->channels == 2)
    sbpro_audio_set_speed(dev, devc->speed);
  }
 }
 return devc->channels;
}
