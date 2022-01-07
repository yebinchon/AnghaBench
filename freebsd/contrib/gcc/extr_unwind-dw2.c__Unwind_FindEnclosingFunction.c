
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dwarf_fde {int dummy; } ;
struct dwarf_eh_bases {void* func; } ;


 struct dwarf_fde* _Unwind_Find_FDE (void*,struct dwarf_eh_bases*) ;

void *
_Unwind_FindEnclosingFunction (void *pc)
{
  struct dwarf_eh_bases bases;
  const struct dwarf_fde *fde = _Unwind_Find_FDE (pc-1, &bases);
  if (fde)
    return bases.func;
  else
    return ((void*)0);
}
