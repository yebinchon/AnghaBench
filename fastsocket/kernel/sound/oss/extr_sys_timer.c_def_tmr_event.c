
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TIMER_ARMED ;
 int TIMER_NOT_ARMED ;







 unsigned long curr_tempo ;
 unsigned long curr_ticks ;
 unsigned long next_event_time ;
 unsigned long prev_event_time ;
 int seq_copy_to_input (unsigned char*,int) ;
 int ticks_offs ;
 int tmr2ticks (int ) ;
 int tmr_ctr ;
 int tmr_offs ;
 int tmr_reset () ;
 int tmr_running ;

__attribute__((used)) static int
def_tmr_event(int dev, unsigned char *event)
{
 unsigned char cmd = event[1];
 unsigned long parm = *(int *) &event[4];

 switch (cmd)
   {
   case 128:
    parm += prev_event_time;
   case 129:
    if (parm > 0)
      {
       long time;

       if (parm <= curr_ticks)
        return TIMER_NOT_ARMED;

       time = parm;
       next_event_time = prev_event_time = time;

       return TIMER_ARMED;
      }
    break;

   case 132:
    tmr_reset();
    tmr_running = 1;
    break;

   case 131:
    tmr_running = 0;
    break;

   case 134:
    tmr_running = 1;
    break;

   case 130:
    if (parm)
      {
       if (parm < 8)
        parm = 8;
       if (parm > 360)
        parm = 360;
       tmr_offs = tmr_ctr;
       ticks_offs += tmr2ticks(tmr_ctr);
       tmr_ctr = 0;
       curr_tempo = parm;
      }
    break;

   case 133:
    seq_copy_to_input(event, 8);
    break;

   default:;
   }

 return TIMER_NOT_ARMED;
}
