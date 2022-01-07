
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* threads; scalar_t__ task; } ;
struct TYPE_3__ {int tid; } ;


 TYPE_2__* current_inferior ;
 int next_thread_id ;

__attribute__((used)) static int
inf_pick_first_thread (void)
{
  if (current_inferior->task && current_inferior->threads)

    return current_inferior->threads->tid;
  else

    return next_thread_id;
}
