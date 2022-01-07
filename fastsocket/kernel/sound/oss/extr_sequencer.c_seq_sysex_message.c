
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* send_sysex ) (unsigned int,unsigned char*,int) ;} ;


 unsigned int max_synthdev ;
 int stub1 (unsigned int,unsigned char*,int) ;
 TYPE_1__** synth_devs ;
 int synth_open_mask ;

__attribute__((used)) static void seq_sysex_message(unsigned char *event_rec)
{
 unsigned int dev = event_rec[1];
 int i, l = 0;
 unsigned char *buf = &event_rec[2];

 if (dev > max_synthdev)
  return;
 if (!(synth_open_mask & (1 << dev)))
  return;
 if (!synth_devs[dev])
  return;

 l = 0;
 for (i = 0; i < 6 && buf[i] != 0xff; i++)
  l = i + 1;

 if (!synth_devs[dev]->send_sysex)
  return;
 if (l > 0)
  synth_devs[dev]->send_sysex(dev, buf, l);
}
