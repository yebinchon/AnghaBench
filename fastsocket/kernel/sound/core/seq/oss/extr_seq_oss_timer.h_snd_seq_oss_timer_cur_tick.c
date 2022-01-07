
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_oss_timer {int cur_tick; } ;
typedef int abstime_t ;



__attribute__((used)) static inline abstime_t
snd_seq_oss_timer_cur_tick(struct seq_oss_timer *timer)
{
 return timer->cur_tick;
}
