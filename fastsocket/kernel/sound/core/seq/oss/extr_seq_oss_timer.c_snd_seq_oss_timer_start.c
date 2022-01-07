
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tmprec ;
struct snd_seq_queue_tempo {int tempo; int ppq; int queue; } ;
struct seq_oss_timer {int running; scalar_t__ cur_tick; int tempo; int ppq; struct seq_oss_devinfo* dp; } ;
struct seq_oss_devinfo {int cseq; int queue; } ;


 int SNDRV_SEQ_EVENT_START ;
 int memset (struct snd_seq_queue_tempo*,int ,int) ;
 int send_timer_event (struct seq_oss_devinfo*,int ,int ) ;
 int snd_seq_oss_timer_stop (struct seq_oss_timer*) ;
 int snd_seq_set_queue_tempo (int ,struct snd_seq_queue_tempo*) ;

int
snd_seq_oss_timer_start(struct seq_oss_timer *timer)
{
 struct seq_oss_devinfo *dp = timer->dp;
 struct snd_seq_queue_tempo tmprec;

 if (timer->running)
  snd_seq_oss_timer_stop(timer);

 memset(&tmprec, 0, sizeof(tmprec));
 tmprec.queue = dp->queue;
 tmprec.ppq = timer->ppq;
 tmprec.tempo = timer->tempo;
 snd_seq_set_queue_tempo(dp->cseq, &tmprec);

 send_timer_event(dp, SNDRV_SEQ_EVENT_START, 0);
 timer->running = 1;
 timer->cur_tick = 0;
 return 0;
}
