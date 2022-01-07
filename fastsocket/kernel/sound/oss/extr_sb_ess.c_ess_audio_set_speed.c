
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int speed; scalar_t__ duplex; } ;
typedef TYPE_1__ sb_devc ;
struct TYPE_5__ {TYPE_1__* devc; } ;


 TYPE_3__** audio_devs ;
 int ess_common_speed (TYPE_1__*,int*,int*) ;

__attribute__((used)) static int ess_audio_set_speed(int dev, int speed)
{
 sb_devc *devc = audio_devs[dev]->devc;
 int minspeed, maxspeed, dummydiv;

 if (speed > 0) {
  minspeed = (devc->duplex ? 6215 : 5000 );
  maxspeed = (devc->duplex ? 44100 : 48000);
  if (speed < minspeed) speed = minspeed;
  if (speed > maxspeed) speed = maxspeed;

  ess_common_speed (devc, &speed, &dummydiv);

  devc->speed = speed;
 }
 return devc->speed;
}
