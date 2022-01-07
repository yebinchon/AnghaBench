
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int (* outputc ) (int,unsigned char) ;} ;
struct TYPE_3__ {int (* hw_control ) (unsigned char,unsigned char*) ;int (* set_instr ) (int ,unsigned char,unsigned char) ;int (* start_note ) (int ,unsigned char,unsigned char,unsigned char) ;int (* kill_note ) (int ,unsigned char,int,unsigned char) ;} ;
 scalar_t__ SEQ_MAX_QUEUE ;







 int TIMER_ARMED ;
 int extended_event (unsigned char*) ;
 int jiffies ;
 int max_synthdev ;
 TYPE_2__** midi_devs ;
 int * midi_opened ;
 int* midi_written ;
 int num_midis ;
 scalar_t__ output_threshold ;
 long prev_event_time ;
 int prev_input_time ;
 scalar_t__ qlen ;
 int request_sound_timer (int) ;
 int seq_chn_common_event (unsigned char*) ;
 int seq_chn_voice_event (unsigned char*) ;
 int seq_copy_to_input (unsigned char*,int) ;
 int seq_local_event (unsigned char*) ;
 int seq_playing ;
 int seq_sleeper ;
 int seq_sysex_message (unsigned char*) ;
 int seq_time ;
 int seq_timing_event (unsigned char*) ;
 int stub1 (int ,unsigned char,int,unsigned char) ;
 int stub2 (int ,unsigned char,unsigned char,unsigned char) ;
 int stub3 (int ,unsigned char,unsigned char) ;
 int stub4 (int,unsigned char) ;
 int stub5 (unsigned char,unsigned char*) ;
 TYPE_1__** synth_devs ;
 int synth_open_mask ;
 int wake_up (int *) ;

__attribute__((used)) static int play_event(unsigned char *q)
{






 unsigned int *delay;

 switch (q[0])
 {
  case 133:
   if (synth_open_mask & (1 << 0))
    if (synth_devs[0])
     synth_devs[0]->kill_note(0, q[1], 255, q[3]);
   break;

  case 132:
   if (q[4] < 128 || q[4] == 255)
    if (synth_open_mask & (1 << 0))
     if (synth_devs[0])
      synth_devs[0]->start_note(0, q[1], q[2], q[3]);
   break;

  case 128:
   delay = (unsigned int *) q;



   *delay = (*delay >> 8) & 0xffffff;

   if (*delay > 0)
   {
    long time;

    seq_playing = 1;
    time = *delay;
    prev_event_time = time;

    request_sound_timer(time);

    if ((SEQ_MAX_QUEUE - qlen) >= output_threshold)
     wake_up(&seq_sleeper);




    return 1;
   }
   break;

  case 131:
   if (synth_open_mask & (1 << 0))
    if (synth_devs[0])
     synth_devs[0]->set_instr(0, q[1], q[2]);
   break;

  case 129:


   seq_time = jiffies;
   prev_input_time = 0;
   prev_event_time = 0;
   break;

  case 134:


   if (midi_opened[q[2]])
   {
    int dev;

    dev = q[2];

    if (dev < 0 || dev >= num_midis || midi_devs[dev] == ((void*)0))
     break;

    if (!midi_devs[dev]->outputc(dev, q[1]))
    {




     seq_playing = 1;
     request_sound_timer(-1);
     return 2;
    }
    else
     midi_written[dev] = 1;
   }
   break;

  case 136:
   seq_copy_to_input(q, 4);


   break;

  case 130:
   if ((int) q[1] < max_synthdev)
    synth_devs[q[1]]->hw_control(q[1], q);
   break;

  case 135:
   extended_event(q);
   break;

  case 140:
   seq_chn_voice_event(q);
   break;

  case 141:
   seq_chn_common_event(q);
   break;

  case 137:
   if (seq_timing_event(q) == TIMER_ARMED)
   {
    return 1;
   }
   break;

  case 139:
   seq_local_event(q);
   break;

  case 138:
   seq_sysex_message(q);
   break;

  default:;
 }
 return 0;
}
