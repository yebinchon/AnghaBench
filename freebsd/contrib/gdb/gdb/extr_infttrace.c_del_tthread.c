
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ tid; int terminated; struct TYPE_4__* next_pseudo; scalar_t__ am_pseudo; struct TYPE_4__* next; } ;
typedef TYPE_1__ thread_info ;
typedef scalar_t__ lwpid_t ;
struct TYPE_6__ {TYPE_1__* head_pseudo; int count; TYPE_1__* head; } ;
struct TYPE_5__ {scalar_t__ count; TYPE_1__* head; TYPE_1__* head_pseudo; } ;


 scalar_t__ debug_on ;
 TYPE_3__ deleted_threads ;
 int error (char*) ;
 int printf (char*,scalar_t__) ;
 TYPE_2__ thread_head ;

__attribute__((used)) static void
del_tthread (lwpid_t tid)
{
  thread_info *p;
  thread_info *chase;

  if (thread_head.count <= 0)
    {
      error ("Internal error in thread database.");
      return;
    }

  chase = ((void*)0);
  for (p = thread_head.head; p; p = p->next)
    {
      if (p->tid == tid)
 {






   if (p->am_pseudo)
     {
       thread_info *q;
       thread_info *q_chase;

       q_chase = ((void*)0);
       for (q = thread_head.head_pseudo; q; q = q->next)
  {
    if (q == p)
      {


        if (q_chase == ((void*)0))
   thread_head.head_pseudo = p->next_pseudo;
        else
   q_chase->next = p->next_pseudo;
      }
    else
      q_chase = q;
  }
     }



   thread_head.count--;

   if (((void*)0) == chase)
     thread_head.head = p->next;
   else
     chase->next = p->next;



   p->next = deleted_threads.head;
   deleted_threads.head = p;
   deleted_threads.count++;
   if (p->am_pseudo)
     {
       p->next_pseudo = deleted_threads.head_pseudo;
       deleted_threads.head_pseudo = p;
     }
   p->terminated = 1;

   return;
 }

      else
 chase = p;
    }
}
