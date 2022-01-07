
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AR9170_TIMER_REG_CONTROL ;
 int AR9170_TIMER_REG_INTERRUPT ;
 scalar_t__ AR9170_TIMER_REG_TIMER0 ;
 int BIT (unsigned int const) ;
 int orl (int ,int ) ;
 int set (scalar_t__,unsigned int const) ;

__attribute__((used)) static void timer_init(const unsigned int timer, const unsigned int interval)
{

 orl(AR9170_TIMER_REG_CONTROL, BIT(timer));


 set(AR9170_TIMER_REG_TIMER0 + (timer << 2), interval - 1);


 orl(AR9170_TIMER_REG_INTERRUPT, BIT(timer));
}
