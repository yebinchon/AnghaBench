
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int play_channels; int play_sample_rate; int play_sample_size; } ;


 int DEFCHANNELS ;
 int DEFSAMPLERATE ;
 int DEFSAMPLESIZE ;
 TYPE_1__ dev ;

__attribute__((used)) static void set_default_play_audio_parameters(void)
{
 dev.play_sample_size = DEFSAMPLESIZE;
 dev.play_sample_rate = DEFSAMPLERATE;
 dev.play_channels = DEFCHANNELS;
}
