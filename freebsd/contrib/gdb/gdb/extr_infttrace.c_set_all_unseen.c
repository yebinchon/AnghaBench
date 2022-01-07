
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ seen; struct TYPE_3__* next; } ;
typedef TYPE_1__ thread_info ;
struct TYPE_4__ {TYPE_1__* head; } ;


 TYPE_2__ thread_head ;

__attribute__((used)) static void
set_all_unseen (void)
{
  thread_info *p;

  for (p = thread_head.head; p; p = p->next)
    {
      p->seen = 0;
    }
}
