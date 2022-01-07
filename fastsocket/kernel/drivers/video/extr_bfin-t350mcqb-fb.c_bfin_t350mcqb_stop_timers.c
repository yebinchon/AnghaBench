
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TIMER0bit ;
 int TIMER1bit ;
 int TIMER_STATUS_TIMIL0 ;
 int TIMER_STATUS_TIMIL1 ;
 int TIMER_STATUS_TOVF0 ;
 int TIMER_STATUS_TOVF1 ;
 int TIMER_STATUS_TRUN0 ;
 int TIMER_STATUS_TRUN1 ;
 int disable_gptimers (int) ;
 int set_gptimer_status (int ,int) ;

__attribute__((used)) static void bfin_t350mcqb_stop_timers(void)
{
 disable_gptimers(TIMER0bit | TIMER1bit);

 set_gptimer_status(0, TIMER_STATUS_TRUN0 | TIMER_STATUS_TRUN1 |
    TIMER_STATUS_TIMIL0 | TIMER_STATUS_TIMIL1 |
     TIMER_STATUS_TOVF0 | TIMER_STATUS_TOVF1);

}
