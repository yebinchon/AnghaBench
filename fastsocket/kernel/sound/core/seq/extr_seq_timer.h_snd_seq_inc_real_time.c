
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ tv_nsec; scalar_t__ tv_sec; } ;
typedef TYPE_1__ snd_seq_real_time_t ;


 int snd_seq_sanity_real_time (TYPE_1__*) ;

__attribute__((used)) static inline void snd_seq_inc_real_time(snd_seq_real_time_t *tm, snd_seq_real_time_t *inc)
{
 tm->tv_sec += inc->tv_sec;
 tm->tv_nsec += inc->tv_nsec;
 snd_seq_sanity_real_time(tm);
}
