
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int leave_sysex (int) ;

void
midi_synth_reset(int dev)
{

 leave_sysex(dev);
}
