
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int channels; int opened; int tconst; int speed; } ;
typedef TYPE_1__ sb_devc ;
struct TYPE_4__ {TYPE_1__* devc; } ;


 int OPEN_READ ;
 TYPE_2__** audio_devs ;

__attribute__((used)) static int sb201_audio_set_speed(int dev, int speed)
{
 sb_devc *devc = audio_devs[dev]->devc;
 int tmp;
 int s = speed * devc->channels;

 if (speed > 0)
 {
  if (speed < 4000)
   speed = 4000;
  if (speed > 44100)
   speed = 44100;
  if (devc->opened & OPEN_READ && speed > 15000)
   speed = 15000;
  devc->tconst = (256 - ((1000000 + s / 2) / s)) & 0xff;
  tmp = 256 - devc->tconst;
  speed = ((1000000 + tmp / 2) / tmp) / devc->channels;

  devc->speed = speed;
 }
 return devc->speed;
}
