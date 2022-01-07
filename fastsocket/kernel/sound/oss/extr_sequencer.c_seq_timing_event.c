
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* event ) (int ,unsigned char*) ;} ;


 scalar_t__ SEQ_2 ;
 unsigned int SEQ_ECHO ;
 scalar_t__ SEQ_MAX_QUEUE ;
 int TIMER_ARMED ;
 int TIMER_NOT_ARMED ;







 int jiffies ;
 scalar_t__ output_threshold ;
 unsigned int prev_event_time ;
 int prev_input_time ;
 scalar_t__ qlen ;
 int request_sound_timer (long) ;
 int seq_copy_to_input (unsigned char*,int) ;
 scalar_t__ seq_mode ;
 int seq_playing ;
 int seq_sleeper ;
 int seq_time ;
 int stub1 (int ,unsigned char*) ;
 TYPE_1__* tmr ;
 int tmr_no ;
 int wake_up (int *) ;

__attribute__((used)) static int seq_timing_event(unsigned char *event_rec)
{
 unsigned char cmd = event_rec[1];
 unsigned int parm = *(int *) &event_rec[4];

 if (seq_mode == SEQ_2)
 {
  int ret;

  if ((ret = tmr->event(tmr_no, event_rec)) == TIMER_ARMED)
   if ((SEQ_MAX_QUEUE - qlen) >= output_threshold)
    wake_up(&seq_sleeper);
  return ret;
 }
 switch (cmd)
 {
  case 128:
   parm += prev_event_time;






  case 129:
   if (parm > 0)
   {
    long time;

    time = parm;
    prev_event_time = time;

    seq_playing = 1;
    request_sound_timer(time);

    if ((SEQ_MAX_QUEUE - qlen) >= output_threshold)
     wake_up(&seq_sleeper);
    return TIMER_ARMED;
   }
   break;

  case 132:
   seq_time = jiffies;
   prev_input_time = 0;
   prev_event_time = 0;
   break;

  case 131:
   break;

  case 134:
   break;

  case 130:
   break;

  case 133:
   if (seq_mode == SEQ_2)
    seq_copy_to_input(event_rec, 8);
   else
   {
    parm = (parm << 8 | SEQ_ECHO);
    seq_copy_to_input((unsigned char *) &parm, 4);
   }
   break;

  default:;
 }

 return TIMER_NOT_ARMED;
}
