
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct audio {int eq_enable; scalar_t__ running; } ;


 int audio_dsp_set_eq (struct audio*) ;

__attribute__((used)) static int audio_enable_eq(struct audio *audio, int enable)
{
 if (audio->eq_enable != enable) {
  audio->eq_enable = enable;
  if (audio->running)
   audio_dsp_set_eq(audio);
 }
 return 0;
}
