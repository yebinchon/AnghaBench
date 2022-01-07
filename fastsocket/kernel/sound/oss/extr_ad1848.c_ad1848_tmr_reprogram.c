
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ad1848_tmr_start (int,int ) ;
 int current_interval ;
 int sound_timer_syncinterval (int ) ;

__attribute__((used)) static void ad1848_tmr_reprogram(int dev)
{





 ad1848_tmr_start(dev, current_interval);
 sound_timer_syncinterval(current_interval);
}
