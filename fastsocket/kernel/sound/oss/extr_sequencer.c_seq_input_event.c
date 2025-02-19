
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long (* get_time ) (int ) ;} ;


 unsigned char EV_TIMING ;
 scalar_t__ SEQ_2 ;
 unsigned char TMR_WAIT_ABS ;
 unsigned long jiffies ;
 unsigned long prev_input_time ;
 int seq_copy_to_input (unsigned char*,int) ;
 scalar_t__ seq_mode ;
 unsigned long seq_time ;
 unsigned long stub1 (int ) ;
 TYPE_1__* tmr ;
 int tmr_no ;

void seq_input_event(unsigned char *event_rec, int len)
{
 unsigned long this_time;

 if (seq_mode == SEQ_2)
  this_time = tmr->get_time(tmr_no);
 else
  this_time = jiffies - seq_time;

 if (this_time != prev_input_time)
 {
  unsigned char tmp_event[8];

  tmp_event[0] = EV_TIMING;
  tmp_event[1] = TMR_WAIT_ABS;
  tmp_event[2] = 0;
  tmp_event[3] = 0;
  *(unsigned int *) &tmp_event[4] = this_time;

  seq_copy_to_input(tmp_event, 8);
  prev_input_time = this_time;
 }
 seq_copy_to_input(event_rec, len);
}
