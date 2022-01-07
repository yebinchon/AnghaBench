
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_seq_event {int dummy; } ;
struct TYPE_3__ {int event_passing; } ;
struct seq_oss_synthinfo {int nr_voices; TYPE_2__* ch; TYPE_1__ arg; } ;
struct seq_oss_devinfo {struct seq_oss_synthinfo* synths; } ;
struct TYPE_4__ {int note; int vel; } ;


 int EINVAL ;
 int SNDRV_SEQ_EVENT_NOTEOFF ;
 int SNDRV_SEQ_EVENT_NOTEON ;



 int set_note_event (struct seq_oss_devinfo*,int,int ,int,int,int,struct snd_seq_event*) ;

__attribute__((used)) static int
note_off_event(struct seq_oss_devinfo *dp, int dev, int ch, int note, int vel, struct snd_seq_event *ev)
{
 struct seq_oss_synthinfo *info = &dp->synths[dev];
 switch (info->arg.event_passing) {
 case 129:
  if (! info->ch || ch < 0 || ch >= info->nr_voices) {

   return set_note_event(dp, dev, SNDRV_SEQ_EVENT_NOTEON, ch, note, vel, ev);
  }

  if (info->ch[ch].note >= 0) {
   note = info->ch[ch].note;
   info->ch[ch].vel = 0;
   info->ch[ch].note = -1;
   return set_note_event(dp, dev, SNDRV_SEQ_EVENT_NOTEOFF, ch, note, vel, ev);
  }
  return -EINVAL;

 case 130:
 case 128:

  return set_note_event(dp, dev, SNDRV_SEQ_EVENT_NOTEOFF, ch, note, vel, ev);

 }
 return -EINVAL;
}
