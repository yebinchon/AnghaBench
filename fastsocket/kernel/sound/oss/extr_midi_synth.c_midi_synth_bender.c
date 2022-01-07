
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int midi_dev; } ;


 int leave_sysex (int) ;
 int midi_outc (int,int) ;
 int prefix_cmd (int,int) ;
 int* prev_out_status ;
 TYPE_1__** synth_devs ;

void
midi_synth_bender(int dev, int channel, int value)
{
 int orig_dev = synth_devs[dev]->midi_dev;
 int msg, prev_chn;

 if (channel < 0 || channel > 15)
  return;

 if (value < 0 || value > 16383)
  return;

 leave_sysex(dev);

 msg = prev_out_status[orig_dev] & 0xf0;
 prev_chn = prev_out_status[orig_dev] & 0x0f;

 if (msg != 0xd0 || prev_chn != channel)


   {
    if (!prefix_cmd(orig_dev, 0xe0 | (channel & 0x0f)))
     return;
    midi_outc(orig_dev, 0xe0 | (channel & 0x0f));
 } else if (!prefix_cmd(orig_dev, value & 0x7f))
  return;

 midi_outc(orig_dev, value & 0x7f);
 midi_outc(orig_dev, (value >> 7) & 0x7f);
}
