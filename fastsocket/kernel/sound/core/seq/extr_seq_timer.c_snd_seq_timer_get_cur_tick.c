
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cur_tick; } ;
struct snd_seq_timer {TYPE_1__ tick; } ;
typedef int snd_seq_tick_time_t ;



snd_seq_tick_time_t snd_seq_timer_get_cur_tick(struct snd_seq_timer *tmr)
{
 return tmr->tick.cur_tick;
}
