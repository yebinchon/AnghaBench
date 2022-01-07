
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
midi_synth_controller(int dev, int channel, int ctrl_num, int value)
{
 int orig_dev = synth_devs[dev]->midi_dev;
 int chn, msg;

 if (ctrl_num < 0 || ctrl_num > 127)
  return;
 if (channel < 0 || channel > 15)
  return;

 leave_sysex(dev);

 msg = prev_out_status[orig_dev] & 0xf0;
 chn = prev_out_status[orig_dev] & 0x0f;

 if (msg != 0xb0 || chn != channel)
   {
    if (!prefix_cmd(orig_dev, 0xb0 | (channel & 0x0f)))
     return;
    midi_outc(orig_dev, 0xb0 | (channel & 0x0f));
 } else if (!prefix_cmd(orig_dev, ctrl_num))
  return;

 midi_outc(orig_dev, ctrl_num);
 midi_outc(orig_dev, value & 0x7f);
}
