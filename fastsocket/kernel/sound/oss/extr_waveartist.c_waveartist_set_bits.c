
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int audio_format; } ;
typedef TYPE_1__ wavnc_port_info ;
struct TYPE_4__ {scalar_t__ portc; } ;


 unsigned int AFMT_S16_LE ;
 unsigned int AFMT_S8 ;
 unsigned int AFMT_U8 ;
 TYPE_2__** audio_devs ;

__attribute__((used)) static unsigned int
waveartist_set_bits(int dev, unsigned int arg)
{
 wavnc_port_info *portc = (wavnc_port_info *) audio_devs[dev]->portc;

 if (arg == 0)
  return portc->audio_format;

 if ((arg != AFMT_U8) && (arg != AFMT_S16_LE) && (arg != AFMT_S8))
  arg = AFMT_U8;

 portc->audio_format = arg;

 return arg;
}
