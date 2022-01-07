
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ct_timer_instance {scalar_t__ need_update; scalar_t__ running; TYPE_2__* substream; int frag_count; } ;
struct TYPE_4__ {TYPE_1__* runtime; } ;
struct TYPE_3__ {int period_size; } ;



__attribute__((used)) static void ct_xfitimer_prepare(struct ct_timer_instance *ti)
{
 ti->frag_count = ti->substream->runtime->period_size;
 ti->running = 0;
 ti->need_update = 0;
}
