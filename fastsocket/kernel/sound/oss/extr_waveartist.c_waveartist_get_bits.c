
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ audio_format; } ;
typedef TYPE_1__ wavnc_port_info ;


 scalar_t__ AFMT_S16_LE ;
 scalar_t__ AFMT_S8 ;

__attribute__((used)) static unsigned int
waveartist_get_bits(wavnc_port_info *portc)
{
 unsigned int bits;

 if (portc->audio_format == AFMT_S16_LE)
  bits = 1;
 else if (portc->audio_format == AFMT_S8)
  bits = 0;
 else
  bits = 2;

 return bits;
}
