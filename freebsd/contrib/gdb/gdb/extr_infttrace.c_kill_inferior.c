
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ pid; struct TYPE_4__* next; scalar_t__ am_pseudo; } ;
typedef TYPE_1__ thread_info ;
struct TYPE_5__ {int count; TYPE_1__* head; } ;


 scalar_t__ PIDGET (int ) ;
 int TT_NIL ;
 int TT_PROC_EXIT ;
 int call_ttrace (int ,scalar_t__,int ,int ,int ) ;
 int clear_thread_info () ;
 int inferior_ptid ;
 int target_mourn_inferior () ;
 TYPE_3__ thread_head ;
 int warning (char*) ;
 int xfree (TYPE_1__**) ;
 scalar_t__ xmalloc (int) ;

void
kill_inferior (void)
{
  int tid;
  int wait_status;
  thread_info *t;
  thread_info **paranoia;
  int para_count, i;

  if (PIDGET (inferior_ptid) == 0)
    return;
  paranoia = (thread_info **) xmalloc (thread_head.count *
           sizeof (thread_info *));
  para_count = 0;

  t = thread_head.head;
  while (t)
    {

      paranoia[para_count] = t;
      for (i = 0; i < para_count; i++)
 {
   if (t->next == paranoia[i])
     {
       warning ("Bad data in gdb's thread data; repairing.");
       t->next = 0;
     }
 }
      para_count++;

      if (t->am_pseudo && (t->pid != PIDGET (inferior_ptid)))
 {
   call_ttrace (TT_PROC_EXIT,
         t->pid,
         TT_NIL,
         TT_NIL,
         TT_NIL);
 }
      t = t->next;
    }

  xfree (paranoia);

  call_ttrace (TT_PROC_EXIT,
        PIDGET (inferior_ptid),
        TT_NIL,
        TT_NIL,
        TT_NIL);
  target_mourn_inferior ();
  clear_thread_info ();
}
