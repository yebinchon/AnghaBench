
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int channel; int param; int value; } ;
struct TYPE_3__ {TYPE_2__ control; } ;
struct snd_seq_event {int type; TYPE_1__ data; } ;
struct seq_oss_devinfo {int dummy; } ;


 int ENXIO ;
 int snd_seq_oss_synth_addr (struct seq_oss_devinfo*,int,struct snd_seq_event*) ;
 int snd_seq_oss_synth_is_valid (struct seq_oss_devinfo*,int) ;

__attribute__((used)) static int
set_control_event(struct seq_oss_devinfo *dp, int dev, int type, int ch, int param, int val, struct snd_seq_event *ev)
{
 if (! snd_seq_oss_synth_is_valid(dp, dev))
  return -ENXIO;

 ev->type = type;
 snd_seq_oss_synth_addr(dp, dev, ev);
 ev->data.control.channel = ch;
 ev->data.control.param = param;
 ev->data.control.value = val;

 return 0;
}
