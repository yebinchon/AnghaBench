
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int chn; int cmd; int val; int dev; int p1; } ;
union evrec {TYPE_1__ l; } ;
struct snd_seq_event {int dummy; } ;
struct seq_oss_devinfo {int dummy; } ;


 int EINVAL ;




 int SNDRV_SEQ_EVENT_CHANPRESS ;
 int SNDRV_SEQ_EVENT_CONTROLLER ;
 int SNDRV_SEQ_EVENT_PGMCHANGE ;
 int SNDRV_SEQ_EVENT_PITCHBEND ;
 int set_control_event (struct seq_oss_devinfo*,int ,int ,int,int ,int ,struct snd_seq_event*) ;

__attribute__((used)) static int
chn_common_event(struct seq_oss_devinfo *dp, union evrec *q, struct snd_seq_event *ev)
{
 if (q->l.chn >= 32)
  return -EINVAL;
 switch (q->l.cmd) {
 case 129:
  return set_control_event(dp, q->l.dev, SNDRV_SEQ_EVENT_PGMCHANGE,
       q->l.chn, 0, q->l.p1, ev);

 case 130:
  return set_control_event(dp, q->l.dev, SNDRV_SEQ_EVENT_CONTROLLER,
       q->l.chn, q->l.p1, q->l.val, ev);

 case 128:

  return set_control_event(dp, q->l.dev, SNDRV_SEQ_EVENT_PITCHBEND,
       q->l.chn, 0, q->l.val - 8192, ev);

 case 131:
  return set_control_event(dp, q->l.dev, SNDRV_SEQ_EVENT_CHANPRESS,
       q->l.chn, 0, q->l.val, ev);
 }
 return -EINVAL;
}
