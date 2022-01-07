
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int midi_dev; } ;


 int leave_sysex (int) ;
 int midi_outc (int,int) ;
 int prefix_cmd (int,int) ;
 TYPE_1__** synth_devs ;

int
midi_synth_set_instr(int dev, int channel, int instr_no)
{
 int orig_dev = synth_devs[dev]->midi_dev;

 if (instr_no < 0 || instr_no > 127)
  instr_no = 0;
 if (channel < 0 || channel > 15)
  return 0;

 leave_sysex(dev);

 if (!prefix_cmd(orig_dev, 0xc0 | (channel & 0x0f)))
  return 0;
 midi_outc(orig_dev, 0xc0 | (channel & 0x0f));


 midi_outc(orig_dev, instr_no);

 return 0;
}
