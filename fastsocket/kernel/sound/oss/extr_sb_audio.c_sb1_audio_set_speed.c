
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int opened; int tconst; int speed; } ;
typedef TYPE_1__ sb_devc ;
struct TYPE_4__ {TYPE_1__* devc; } ;


 int OPEN_READ ;
 TYPE_2__** audio_devs ;

__attribute__((used)) static int sb1_audio_set_speed(int dev, int speed)
{
 int max_speed = 23000;
 sb_devc *devc = audio_devs[dev]->devc;
 int tmp;

 if (devc->opened & OPEN_READ)
  max_speed = 13000;

 if (speed > 0)
 {
  if (speed < 4000)
   speed = 4000;

  if (speed > max_speed)
   speed = max_speed;

  devc->tconst = (256 - ((1000000 + speed / 2) / speed)) & 0xff;
  tmp = 256 - devc->tconst;
  speed = (1000000 + tmp / 2) / tmp;

  devc->speed = speed;
 }
 return devc->speed;
}
