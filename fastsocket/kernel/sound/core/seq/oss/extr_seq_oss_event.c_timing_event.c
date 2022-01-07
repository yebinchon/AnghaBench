
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cmd; int time; } ;
union evrec {int echo; TYPE_1__ t; } ;
typedef int tmp ;
struct snd_seq_event {int dummy; } ;
struct seq_oss_devinfo {int timer; int seq_mode; } ;


 int EINVAL ;
 int SEQ_ECHO ;
 int SNDRV_SEQ_OSS_MODE_MUSIC ;




 int memset (union evrec*,int ,int) ;
 int set_echo_event (struct seq_oss_devinfo*,union evrec*,struct snd_seq_event*) ;
 int snd_seq_oss_timer_continue (int ) ;
 int snd_seq_oss_timer_stop (int ) ;
 int snd_seq_oss_timer_tempo (int ,int) ;

__attribute__((used)) static int
timing_event(struct seq_oss_devinfo *dp, union evrec *q, struct snd_seq_event *ev)
{
 switch (q->t.cmd) {
 case 130:
  if (dp->seq_mode == SNDRV_SEQ_OSS_MODE_MUSIC)
   return set_echo_event(dp, q, ev);
  else {
   union evrec tmp;
   memset(&tmp, 0, sizeof(tmp));

   tmp.echo = (q->t.time << 8) | SEQ_ECHO;
   return set_echo_event(dp, &tmp, ev);
  }

 case 129:
  if (dp->seq_mode)
   return snd_seq_oss_timer_stop(dp->timer);
  return 0;

 case 131:
  if (dp->seq_mode)
   return snd_seq_oss_timer_continue(dp->timer);
  return 0;

 case 128:
  if (dp->seq_mode)
   return snd_seq_oss_timer_tempo(dp->timer, q->t.time);
  return 0;
 }

 return -EINVAL;
}
