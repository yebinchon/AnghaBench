
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ tv_sec; scalar_t__ tv_nsec; } ;
typedef TYPE_1__ snd_seq_real_time_t ;



__attribute__((used)) static inline int snd_seq_compare_real_time(snd_seq_real_time_t *a, snd_seq_real_time_t *b)
{

 if (a->tv_sec > b->tv_sec)
  return 1;
 if ((a->tv_sec == b->tv_sec) && (a->tv_nsec >= b->tv_nsec))
  return 1;
 return 0;
}
