
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct file {int dummy; } ;
struct TYPE_2__ {int owner; int (* close ) (int) ;int (* outputc ) (int,int) ;} ;


 scalar_t__ DATA_AVAIL (int *) ;
 int OPEN_READ ;
 int current ;
 int del_timer_sync (int *) ;
 int drain_midi_queue (int) ;
 int interruptible_sleep_on (int *) ;
 TYPE_1__** midi_devs ;
 int ** midi_in_buf ;
 int ** midi_out_buf ;
 int * midi_sleeper ;
 int module_put (int ) ;
 int num_midis ;
 scalar_t__ open_devs ;
 int poll_timer ;
 int signal_pending (int ) ;
 int stub1 (int,int) ;
 int stub2 (int) ;
 int translate_mode (struct file*) ;
 int vfree (int *) ;

void MIDIbuf_release(int dev, struct file *file)
{
 int mode;

 dev = dev >> 4;
 mode = translate_mode(file);

 if (dev < 0 || dev >= num_midis || midi_devs[dev] == ((void*)0))
  return;





 if (mode != OPEN_READ)
 {
  midi_devs[dev]->outputc(dev, 0xfe);




  while (!signal_pending(current) && DATA_AVAIL(midi_out_buf[dev]))
     interruptible_sleep_on(&midi_sleeper[dev]);




  drain_midi_queue(dev);


 }

 midi_devs[dev]->close(dev);

 open_devs--;
 if (open_devs == 0)
  del_timer_sync(&poll_timer);
 vfree(midi_in_buf[dev]);
 vfree(midi_out_buf[dev]);
 midi_in_buf[dev] = ((void*)0);
 midi_out_buf[dev] = ((void*)0);

 module_put(midi_devs[dev]->owner);
}
