
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ expires; } ;
struct loopback_pcm {TYPE_1__ timer; } ;


 int del_timer (TYPE_1__*) ;

__attribute__((used)) static inline void loopback_timer_stop(struct loopback_pcm *dpcm)
{
 del_timer(&dpcm->timer);
 dpcm->timer.expires = 0;
}
