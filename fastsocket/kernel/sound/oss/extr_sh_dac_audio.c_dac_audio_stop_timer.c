
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int hrtimer ;
 int hrtimer_cancel (int *) ;

__attribute__((used)) static void dac_audio_stop_timer(void)
{
 hrtimer_cancel(&hrtimer);
}
