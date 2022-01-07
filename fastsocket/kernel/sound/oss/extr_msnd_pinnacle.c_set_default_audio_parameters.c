
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int set_default_play_audio_parameters () ;
 int set_default_rec_audio_parameters () ;

__attribute__((used)) static void set_default_audio_parameters(void)
{
 set_default_play_audio_parameters();
 set_default_rec_audio_parameters();
}
