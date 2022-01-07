
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_timer_instance {int dummy; } ;


 int SNDRV_TIMER_EVENT_PAUSE ;
 int _snd_timer_stop (struct snd_timer_instance*,int ,int ) ;

int snd_timer_pause(struct snd_timer_instance * timeri)
{
 return _snd_timer_stop(timeri, 0, SNDRV_TIMER_EVENT_PAUSE);
}
