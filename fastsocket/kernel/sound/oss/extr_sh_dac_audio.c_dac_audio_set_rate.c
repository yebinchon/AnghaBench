
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ktime_set (int ,int) ;
 int rate ;
 int wakeups_per_second ;

__attribute__((used)) static void dac_audio_set_rate(void)
{
 wakeups_per_second = ktime_set(0, 1000000000 / rate);
}
