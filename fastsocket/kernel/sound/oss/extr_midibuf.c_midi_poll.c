
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int (* outputc ) (int,int) ;} ;
struct TYPE_7__ {int* queue; size_t head; int len; } ;
struct TYPE_6__ {scalar_t__ expires; } ;


 int DATA_AVAIL (TYPE_2__*) ;
 int MAX_QUEUE_SIZE ;
 int add_timer (TYPE_1__*) ;
 scalar_t__ jiffies ;
 int lock ;
 TYPE_3__** midi_devs ;
 TYPE_2__** midi_out_buf ;
 int * midi_sleeper ;
 int num_midis ;
 scalar_t__ open_devs ;
 TYPE_1__ poll_timer ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (int,int) ;
 int wake_up (int *) ;

__attribute__((used)) static void midi_poll(unsigned long dummy)
{
 unsigned long flags;
 int dev;

 spin_lock_irqsave(&lock, flags);
 if (open_devs)
 {
  for (dev = 0; dev < num_midis; dev++)
   if (midi_devs[dev] != ((void*)0) && midi_out_buf[dev] != ((void*)0))
   {
    while (DATA_AVAIL(midi_out_buf[dev]))
    {
     int ok;
     int c = midi_out_buf[dev]->queue[midi_out_buf[dev]->head];

     spin_unlock_irqrestore(&lock,flags);
     ok = midi_devs[dev]->outputc(dev, c);
     spin_lock_irqsave(&lock, flags);
     if (!ok)
      break;
     midi_out_buf[dev]->head = (midi_out_buf[dev]->head + 1) % MAX_QUEUE_SIZE;
     midi_out_buf[dev]->len--;
    }

    if (DATA_AVAIL(midi_out_buf[dev]) < 100)
     wake_up(&midi_sleeper[dev]);
   }
  poll_timer.expires = (1) + jiffies;
  add_timer(&poll_timer);



 }
 spin_unlock_irqrestore(&lock, flags);
}
