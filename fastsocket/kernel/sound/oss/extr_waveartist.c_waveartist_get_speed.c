
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int speed; } ;
typedef TYPE_1__ wavnc_port_info ;



__attribute__((used)) static unsigned int
waveartist_get_speed(wavnc_port_info *portc)
{
 unsigned int speed;




 if (portc->speed == 8000)
  speed = 0x2E71;
 else if (portc->speed == 11025)
  speed = 0x4000;
 else if (portc->speed == 22050)
  speed = 0x8000;
 else if (portc->speed == 44100)
  speed = 0x0;
 else {



  speed = portc->speed << 16;

  speed = (speed / 44100) & 65535;
 }

 return speed;
}
