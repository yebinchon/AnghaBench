
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct audio_in {int agc_enable; scalar_t__ running; } ;


 int audio_dsp_set_agc (struct audio_in*) ;

__attribute__((used)) static void audio_enable_agc(struct audio_in *audio, int enable)
{
 if (audio->agc_enable != enable) {
  audio->agc_enable = enable;
  if (audio->running)
   audio_dsp_set_agc(audio);
 }
}
