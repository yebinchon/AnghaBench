
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int HRTIMER_MODE_REL ;
 int hrtimer ;
 int hrtimer_start (int *,int ,int ) ;
 int wakeups_per_second ;

__attribute__((used)) static void dac_audio_start_timer(void)
{
 hrtimer_start(&hrtimer, wakeups_per_second, HRTIMER_MODE_REL);
}
