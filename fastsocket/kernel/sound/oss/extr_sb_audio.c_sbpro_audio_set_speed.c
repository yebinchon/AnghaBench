
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int channels; int speed; } ;
typedef TYPE_1__ sb_devc ;
struct TYPE_4__ {TYPE_1__* devc; } ;


 TYPE_2__** audio_devs ;
 int sb201_audio_set_speed (int,int) ;

__attribute__((used)) static int sbpro_audio_set_speed(int dev, int speed)
{
 sb_devc *devc = audio_devs[dev]->devc;

 if (speed > 0)
 {
  if (speed < 4000)
   speed = 4000;
  if (speed > 44100)
   speed = 44100;
  if (devc->channels > 1 && speed > 22050)
   speed = 22050;
  sb201_audio_set_speed(dev, speed);
 }
 return devc->speed;
}
