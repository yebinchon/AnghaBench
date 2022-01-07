
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int (* close ) (int) ;} ;
struct TYPE_3__ {int (* bender ) (int,int,int) ;int (* controller ) (int,int,int,int ) ;int (* reset ) (int) ;} ;


 scalar_t__ SEQ_2 ;
 scalar_t__ iqhead ;
 scalar_t__ iqlen ;
 scalar_t__ iqtail ;
 int jiffies ;
 int lock ;
 int max_mididev ;
 int max_synthdev ;
 TYPE_2__** midi_devs ;
 scalar_t__* midi_opened ;
 int midi_outc (int,int) ;
 scalar_t__* midi_written ;
 scalar_t__ prev_event_time ;
 scalar_t__ prev_input_time ;
 scalar_t__ qhead ;
 scalar_t__ qlen ;
 scalar_t__ qtail ;
 scalar_t__ seq_mode ;
 scalar_t__ seq_playing ;
 int seq_sleeper ;
 int seq_time ;
 int sound_stop_timer () ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (int) ;
 int stub2 (int,int,int,int ) ;
 int stub3 (int,int,int,int ) ;
 int stub4 (int,int,int) ;
 int stub5 (int) ;
 TYPE_1__** synth_devs ;
 int synth_open_mask ;
 scalar_t__ waitqueue_active (int *) ;
 int wake_up (int *) ;

__attribute__((used)) static void seq_reset(void)
{




 int i;
 int chn;
 unsigned long flags;

 sound_stop_timer();

 seq_time = jiffies;
 prev_input_time = 0;
 prev_event_time = 0;

 qlen = qhead = qtail = 0;
 iqlen = iqhead = iqtail = 0;

 for (i = 0; i < max_synthdev; i++)
  if (synth_open_mask & (1 << i))
   if (synth_devs[i])
    synth_devs[i]->reset(i);

 if (seq_mode == SEQ_2)
 {
  for (chn = 0; chn < 16; chn++)
   for (i = 0; i < max_synthdev; i++)
    if (synth_open_mask & (1 << i))
     if (synth_devs[i])
     {
      synth_devs[i]->controller(i, chn, 123, 0);
      synth_devs[i]->controller(i, chn, 121, 0);
      synth_devs[i]->bender(i, chn, 1 << 13);
     }
 }
 else
 {
  for (i = 0; i < max_mididev; i++)
   if (midi_written[i])


   {





    midi_outc(i, 0xfe);

    for (chn = 0; chn < 16; chn++)
    {
     midi_outc(i, (unsigned char) (0xb0 + (chn & 0x0f)));
     midi_outc(i, 0x7b);
     midi_outc(i, 0);
    }

    midi_devs[i]->close(i);

    midi_written[i] = 0;
    midi_opened[i] = 0;
   }
 }

 seq_playing = 0;

 spin_lock_irqsave(&lock,flags);

 if (waitqueue_active(&seq_sleeper)) {

  wake_up(&seq_sleeper);
 }
 spin_unlock_irqrestore(&lock,flags);
}
