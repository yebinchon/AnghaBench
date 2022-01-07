
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int (* outputc ) (int,int) ;} ;
struct TYPE_3__ {int midi_dev; } ;


 TYPE_2__** midi_devs ;
 int stub1 (int,int) ;
 TYPE_1__** synth_devs ;
 scalar_t__* sysex_state ;

__attribute__((used)) static void
leave_sysex(int dev)
{
 int orig_dev = synth_devs[dev]->midi_dev;
 int timeout = 0;

 if (!sysex_state[dev])
  return;

 sysex_state[dev] = 0;

 while (!midi_devs[orig_dev]->outputc(orig_dev, 0xf7) &&
        timeout < 1000)
  timeout++;

 sysex_state[dev] = 0;
}
