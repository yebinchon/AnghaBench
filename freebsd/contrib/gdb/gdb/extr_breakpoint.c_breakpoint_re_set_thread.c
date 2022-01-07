
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct breakpoint {int thread; } ;


 scalar_t__ in_thread_list (int ) ;
 int inferior_ptid ;
 int pid_to_thread_id (int ) ;

void
breakpoint_re_set_thread (struct breakpoint *b)
{
  if (b->thread != -1)
    {
      if (in_thread_list (inferior_ptid))
 b->thread = pid_to_thread_id (inferior_ptid);
    }
}
