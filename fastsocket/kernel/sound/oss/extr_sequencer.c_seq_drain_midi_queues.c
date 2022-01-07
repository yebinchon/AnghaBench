
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ (* buffer_status ) (int) ;} ;


 int HZ ;
 int current ;
 int interruptible_sleep_on_timeout (int *,int) ;
 int max_mididev ;
 TYPE_1__** midi_devs ;
 scalar_t__* midi_opened ;
 scalar_t__* midi_written ;
 int seq_sleeper ;
 int signal_pending (int ) ;
 scalar_t__ stub1 (int) ;

__attribute__((used)) static void seq_drain_midi_queues(void)
{
 int i, n;





 n = 1;

 while (!signal_pending(current) && n)
 {
  n = 0;

  for (i = 0; i < max_mididev; i++)
   if (midi_opened[i] && midi_written[i])
    if (midi_devs[i]->buffer_status != ((void*)0))
     if (midi_devs[i]->buffer_status(i))
      n++;





   if (n)
    interruptible_sleep_on_timeout(&seq_sleeper,
             HZ/10);
 }
}
