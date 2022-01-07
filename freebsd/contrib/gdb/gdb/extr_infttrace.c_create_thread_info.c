
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int pid; int tid; int am_pseudo; struct TYPE_5__* next_pseudo; struct TYPE_5__* next; int stepping_mode; scalar_t__ terminated; scalar_t__ seen; scalar_t__ handled; int last_stop_state; scalar_t__ have_state; scalar_t__ have_start; scalar_t__ have_signal; } ;
typedef TYPE_1__ thread_info ;
typedef int lwpid_t ;
struct TYPE_6__ {scalar_t__ count; TYPE_1__* head_pseudo; TYPE_1__* head; } ;


 int DO_DEFAULT ;
 int clear_ttstate_t (int *) ;
 scalar_t__ debug_on ;
 int inferior_ptid ;
 int printf (char*,int,int) ;
 int saved_real_ptid ;
 TYPE_3__ thread_head ;
 TYPE_1__* xmalloc (int) ;

__attribute__((used)) static thread_info *
create_thread_info (int pid, lwpid_t tid)
{
  thread_info *new_p;
  thread_info *p;
  int thread_count_of_pid;

  new_p = xmalloc (sizeof (thread_info));
  new_p->pid = pid;
  new_p->tid = tid;
  new_p->have_signal = 0;
  new_p->have_start = 0;
  new_p->have_state = 0;
  clear_ttstate_t (&new_p->last_stop_state);
  new_p->am_pseudo = 0;
  new_p->handled = 0;
  new_p->seen = 0;
  new_p->terminated = 0;
  new_p->next = ((void*)0);
  new_p->next_pseudo = ((void*)0);
  new_p->stepping_mode = DO_DEFAULT;

  if (0 == thread_head.count)
    {




      saved_real_ptid = inferior_ptid;
    }
  else
    {




    }



  thread_head.count++;



  new_p->next = thread_head.head;
  thread_head.head = new_p;






  p = thread_head.head;
  thread_count_of_pid = 0;
  while (p)
    {
      if (p->pid == new_p->pid)
 thread_count_of_pid++;
      p = p->next;
    }




  if (thread_count_of_pid == 1)
    {
      new_p->am_pseudo = 1;
      new_p->next_pseudo = thread_head.head_pseudo;
      thread_head.head_pseudo = new_p;
    }

  return new_p;
}
