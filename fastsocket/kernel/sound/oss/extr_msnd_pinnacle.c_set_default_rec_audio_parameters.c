
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int rec_channels; int rec_sample_rate; int rec_sample_size; } ;


 int DEFCHANNELS ;
 int DEFSAMPLERATE ;
 int DEFSAMPLESIZE ;
 TYPE_1__ dev ;

__attribute__((used)) static void set_default_rec_audio_parameters(void)
{
 dev.rec_sample_size = DEFSAMPLESIZE;
 dev.rec_sample_rate = DEFSAMPLERATE;
 dev.rec_channels = DEFCHANNELS;
}
