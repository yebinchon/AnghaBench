
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct audio {int adrc_enable; scalar_t__ running; } ;


 int audio_dsp_set_adrc (struct audio*) ;

__attribute__((used)) static int audio_enable_adrc(struct audio *audio, int enable)
{
 if (audio->adrc_enable != enable) {
  audio->adrc_enable = enable;
  if (audio->running)
   audio_dsp_set_adrc(audio);
 }
 return 0;
}
