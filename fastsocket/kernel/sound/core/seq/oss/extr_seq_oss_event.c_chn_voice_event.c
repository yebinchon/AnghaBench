
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int chn; int cmd; int parm; int note; int dev; } ;
union evrec {TYPE_1__ v; } ;
struct snd_seq_event {int dummy; } ;
struct seq_oss_devinfo {int dummy; } ;


 int EINVAL ;



 int SNDRV_SEQ_EVENT_KEYPRESS ;
 int note_off_event (struct seq_oss_devinfo*,int ,int,int ,int ,struct snd_seq_event*) ;
 int note_on_event (struct seq_oss_devinfo*,int ,int,int ,int ,struct snd_seq_event*) ;
 int set_note_event (struct seq_oss_devinfo*,int ,int ,int,int ,int ,struct snd_seq_event*) ;

__attribute__((used)) static int
chn_voice_event(struct seq_oss_devinfo *dp, union evrec *q, struct snd_seq_event *ev)
{
 if (q->v.chn >= 32)
  return -EINVAL;
 switch (q->v.cmd) {
 case 128:
  return note_on_event(dp, q->v.dev, q->v.chn, q->v.note, q->v.parm, ev);

 case 129:
  return note_off_event(dp, q->v.dev, q->v.chn, q->v.note, q->v.parm, ev);

 case 130:
  return set_note_event(dp, q->v.dev, SNDRV_SEQ_EVENT_KEYPRESS,
           q->v.chn, q->v.note, q->v.parm, ev);

 }
 return -EINVAL;
}
