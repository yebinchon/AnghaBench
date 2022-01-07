
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int speed; } ;
typedef TYPE_1__ wavnc_port_info ;
struct TYPE_4__ {scalar_t__ portc; } ;


 TYPE_2__** audio_devs ;

__attribute__((used)) static int
waveartist_set_speed(int dev, int arg)
{
 wavnc_port_info *portc = (wavnc_port_info *) audio_devs[dev]->portc;

 if (arg <= 0)
  return portc->speed;

 if (arg < 5000)
  arg = 5000;
 if (arg > 44100)
  arg = 44100;

 portc->speed = arg;
 return portc->speed;

}
