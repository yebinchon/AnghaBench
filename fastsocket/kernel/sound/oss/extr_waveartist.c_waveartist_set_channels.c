
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {short channels; } ;
typedef TYPE_1__ wavnc_port_info ;
struct TYPE_4__ {scalar_t__ portc; } ;


 TYPE_2__** audio_devs ;

__attribute__((used)) static short
waveartist_set_channels(int dev, short arg)
{
 wavnc_port_info *portc = (wavnc_port_info *) audio_devs[dev]->portc;

 if (arg != 1 && arg != 2)
  return portc->channels;

 portc->channels = arg;
 return arg;
}
