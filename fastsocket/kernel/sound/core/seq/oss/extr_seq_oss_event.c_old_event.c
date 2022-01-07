
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int note; int chn; int vel; } ;
struct TYPE_3__ {int code; } ;
union evrec {TYPE_2__ n; TYPE_1__ s; } ;
struct snd_seq_event {int dummy; } ;
struct seq_oss_devinfo {int timer; } ;


 int EINVAL ;





 int SNDRV_SEQ_EVENT_PGMCHANGE ;
 int note_off_event (struct seq_oss_devinfo*,int ,int ,int ,int ,struct snd_seq_event*) ;
 int note_on_event (struct seq_oss_devinfo*,int ,int ,int ,int ,struct snd_seq_event*) ;
 int set_control_event (struct seq_oss_devinfo*,int ,int ,int ,int ,int ,struct snd_seq_event*) ;
 int snd_seq_oss_timer_reset (int ) ;

__attribute__((used)) static int
old_event(struct seq_oss_devinfo *dp, union evrec *q, struct snd_seq_event *ev)
{
 switch (q->s.code) {
 case 132:
  return note_off_event(dp, 0, q->n.chn, q->n.note, q->n.vel, ev);

 case 131:
  return note_on_event(dp, 0, q->n.chn, q->n.note, q->n.vel, ev);

 case 128:

  break;

 case 130:
  return set_control_event(dp, 0, SNDRV_SEQ_EVENT_PGMCHANGE,
      q->n.chn, 0, q->n.note, ev);

 case 129:
  return snd_seq_oss_timer_reset(dp->timer);
 }

 return -EINVAL;
}
