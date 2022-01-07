
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* next; } ;
typedef TYPE_1__ thread_info ;
struct TYPE_7__ {scalar_t__ count; int * head_pseudo; TYPE_1__* head; } ;
struct TYPE_6__ {scalar_t__ count; int * head_pseudo; TYPE_1__* head; } ;


 scalar_t__ debug_on ;
 TYPE_4__ deleted_threads ;
 scalar_t__ more_events_left ;
 int printf (char*) ;
 TYPE_3__ thread_head ;
 int xfree (TYPE_1__*) ;

__attribute__((used)) static void
clear_thread_info (void)
{
  thread_info *p;
  thread_info *q;






  p = thread_head.head;
  while (p)
    {
      q = p;
      p = p->next;
      xfree (q);
    }

  thread_head.head = ((void*)0);
  thread_head.head_pseudo = ((void*)0);
  thread_head.count = 0;

  p = deleted_threads.head;
  while (p)
    {
      q = p;
      p = p->next;
      xfree (q);
    }

  deleted_threads.head = ((void*)0);
  deleted_threads.head_pseudo = ((void*)0);
  deleted_threads.count = 0;



  more_events_left = 0;
}
