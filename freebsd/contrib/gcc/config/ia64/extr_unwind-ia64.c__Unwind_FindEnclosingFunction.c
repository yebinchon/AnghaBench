
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct unw_table_entry {scalar_t__ start_offset; } ;


 struct unw_table_entry* _Unwind_FindTableEntry (void*,unsigned long*,unsigned long*) ;

void *
_Unwind_FindEnclosingFunction (void *pc)
{
  struct unw_table_entry *ent;
  unsigned long segment_base, gp;

  ent = _Unwind_FindTableEntry (pc, &segment_base, &gp);
  if (ent == ((void*)0))
    return ((void*)0);
  else
    return (void *)(segment_base + ent->start_offset);
}
