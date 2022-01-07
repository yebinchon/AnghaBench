
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dummy_frame {scalar_t__ call_lo; scalar_t__ call_hi; scalar_t__ top; scalar_t__ fp; scalar_t__ sp; struct dummy_frame* next; } ;
typedef scalar_t__ CORE_ADDR ;


 struct dummy_frame* dummy_frame_stack ;

__attribute__((used)) static struct dummy_frame *
find_dummy_frame (CORE_ADDR pc, CORE_ADDR fp)
{
  struct dummy_frame *dummyframe;

  for (dummyframe = dummy_frame_stack; dummyframe != ((void*)0);
       dummyframe = dummyframe->next)
    {


      if (!(pc >= dummyframe->call_lo && pc < dummyframe->call_hi))
 continue;

      if (dummyframe->top != 0)
 {






   if (fp != dummyframe->top)
     continue;
 }
      else
 {






   if (fp != dummyframe->fp && fp != dummyframe->sp)
     continue;
 }

      return dummyframe;
    }

  return ((void*)0);
}
