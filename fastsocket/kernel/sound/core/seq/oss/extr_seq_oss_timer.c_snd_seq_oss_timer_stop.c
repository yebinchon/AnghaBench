
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_oss_timer {scalar_t__ running; int dp; } ;


 int SNDRV_SEQ_EVENT_STOP ;
 int send_timer_event (int ,int ,int ) ;

int
snd_seq_oss_timer_stop(struct seq_oss_timer *timer)
{
 if (! timer->running)
  return 0;
 send_timer_event(timer->dp, SNDRV_SEQ_EVENT_STOP, 0);
 timer->running = 0;
 return 0;
}
