
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ (* buffer_status ) (int) ;} ;


 int HZ ;
 int current ;
 int interruptible_sleep_on_timeout (int *,int) ;
 TYPE_1__** midi_devs ;
 int * midi_sleeper ;
 int signal_pending (int ) ;
 scalar_t__ stub1 (int) ;

__attribute__((used)) static void drain_midi_queue(int dev)
{





 if (midi_devs[dev]->buffer_status != ((void*)0))
  while (!signal_pending(current) && midi_devs[dev]->buffer_status(dev))
   interruptible_sleep_on_timeout(&midi_sleeper[dev],
             HZ/10);
}
