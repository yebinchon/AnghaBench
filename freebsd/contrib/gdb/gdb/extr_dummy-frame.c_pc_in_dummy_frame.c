
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dummy_frame {scalar_t__ call_lo; scalar_t__ call_hi; struct dummy_frame* next; } ;
typedef scalar_t__ CORE_ADDR ;


 scalar_t__ DECR_PC_AFTER_BREAK ;
 struct dummy_frame* dummy_frame_stack ;

int
pc_in_dummy_frame (CORE_ADDR pc)
{
  struct dummy_frame *dummyframe;
  for (dummyframe = dummy_frame_stack;
       dummyframe != ((void*)0);
       dummyframe = dummyframe->next)
    {
      if ((pc >= dummyframe->call_lo)
   && (pc < dummyframe->call_hi + DECR_PC_AFTER_BREAK))
 return 1;
    }
  return 0;
}
