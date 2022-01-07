
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int (* close ) (int) ;int (* outputc ) (int,int) ;} ;
struct TYPE_3__ {int midi_dev; } ;


 int leave_sysex (int) ;
 TYPE_2__** midi_devs ;
 int stub1 (int,int) ;
 int stub2 (int) ;
 TYPE_1__** synth_devs ;

void
midi_synth_close(int dev)
{
 int orig_dev = synth_devs[dev]->midi_dev;

 leave_sysex(dev);




 midi_devs[orig_dev]->outputc(orig_dev, 0xfe);

 midi_devs[orig_dev]->close(orig_dev);
}
