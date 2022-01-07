
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hrtimer {int dummy; } ;
typedef enum hrtimer_restart { ____Placeholder_hrtimer_restart } hrtimer_restart ;


 int BUFFER_SIZE ;
 int CONFIG_SOUND_SH_DAC_AUDIO_CHANNEL ;
 int HRTIMER_MODE_REL ;
 int HRTIMER_NORESTART ;
 int * buffer_begin ;
 int * buffer_end ;
 int * data_buffer ;
 int empty ;
 int hrtimer ;
 int hrtimer_start (int *,int ,int ) ;
 int sh_dac_output (int ,int ) ;
 int wakeups_per_second ;

__attribute__((used)) static enum hrtimer_restart sh_dac_audio_timer(struct hrtimer *handle)
{
 if (!empty) {
  sh_dac_output(*buffer_begin, CONFIG_SOUND_SH_DAC_AUDIO_CHANNEL);
  buffer_begin++;

  if (buffer_begin == data_buffer + BUFFER_SIZE)
   buffer_begin = data_buffer;
  if (buffer_begin == buffer_end)
   empty = 1;
 }

 if (!empty)
  hrtimer_start(&hrtimer, wakeups_per_second, HRTIMER_MODE_REL);

 return HRTIMER_NORESTART;
}
