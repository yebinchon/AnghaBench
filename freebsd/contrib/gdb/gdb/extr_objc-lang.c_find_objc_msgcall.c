
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ begin; scalar_t__ end; int * stop_at; } ;
typedef scalar_t__ CORE_ADDR ;


 int find_objc_msgcall_submethod (int *,scalar_t__,scalar_t__*) ;
 int find_objc_msgsend () ;
 TYPE_1__* methcalls ;
 unsigned int nmethcalls ;

int
find_objc_msgcall (CORE_ADDR pc, CORE_ADDR *new_pc)
{
  unsigned int i;

  find_objc_msgsend ();
  if (new_pc != ((void*)0))
    {
      *new_pc = 0;
    }

  for (i = 0; i < nmethcalls; i++)
    if ((pc >= methcalls[i].begin) && (pc < methcalls[i].end))
      {
 if (methcalls[i].stop_at != ((void*)0))
   return find_objc_msgcall_submethod (methcalls[i].stop_at,
           pc, new_pc);
 else
   return 0;
      }

  return 0;
}
