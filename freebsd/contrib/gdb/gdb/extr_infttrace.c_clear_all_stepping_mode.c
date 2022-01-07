
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {void* stepping_mode; struct TYPE_4__* next; } ;
typedef TYPE_1__ thread_info ;
struct TYPE_6__ {TYPE_1__* head; } ;
struct TYPE_5__ {TYPE_1__* head; } ;


 void* DO_DEFAULT ;
 scalar_t__ debug_on ;
 TYPE_3__ deleted_threads ;
 int printf (char*) ;
 TYPE_2__ thread_head ;

__attribute__((used)) static void
clear_all_stepping_mode (void)
{
  thread_info *p;






  for (p = thread_head.head; p; p = p->next)
    {
      p->stepping_mode = DO_DEFAULT;
    }

  for (p = deleted_threads.head; p; p = p->next)
    {
      p->stepping_mode = DO_DEFAULT;
    }
}
