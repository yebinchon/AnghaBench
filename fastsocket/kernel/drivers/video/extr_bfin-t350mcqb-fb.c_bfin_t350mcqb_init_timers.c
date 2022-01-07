
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int H_PERIOD ;
 int H_PULSE ;
 int TIMER0_id ;
 int TIMER1_id ;
 int TIMER_CLK_SEL ;
 int TIMER_EMU_RUN ;
 int TIMER_MODE_PWM ;
 int TIMER_PERIOD_CNT ;
 int TIMER_TIN_SEL ;
 int V_PERIOD ;
 int V_PULSE ;
 int bfin_t350mcqb_stop_timers () ;
 int set_gptimer_config (int ,int) ;
 int set_gptimer_period (int ,int ) ;
 int set_gptimer_pwidth (int ,int ) ;

__attribute__((used)) static void bfin_t350mcqb_init_timers(void)
{

 bfin_t350mcqb_stop_timers();

 set_gptimer_period(TIMER0_id, H_PERIOD);
 set_gptimer_pwidth(TIMER0_id, H_PULSE);
 set_gptimer_config(TIMER0_id, TIMER_MODE_PWM | TIMER_PERIOD_CNT |
          TIMER_TIN_SEL | TIMER_CLK_SEL|
          TIMER_EMU_RUN);

 set_gptimer_period(TIMER1_id, V_PERIOD);
 set_gptimer_pwidth(TIMER1_id, V_PULSE);
 set_gptimer_config(TIMER1_id, TIMER_MODE_PWM | TIMER_PERIOD_CNT |
          TIMER_TIN_SEL | TIMER_CLK_SEL |
          TIMER_EMU_RUN);

}
