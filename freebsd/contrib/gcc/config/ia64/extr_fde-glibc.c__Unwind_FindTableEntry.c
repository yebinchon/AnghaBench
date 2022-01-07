
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct unw_table_entry {int dummy; } ;
struct unw_ia64_callback_data {unsigned long* segment_base; unsigned long* gp; struct unw_table_entry* ret; scalar_t__ pc; } ;
typedef scalar_t__ Elf64_Addr ;


 int _Unwind_IteratePhdrCallback ;
 scalar_t__ dl_iterate_phdr (int ,struct unw_ia64_callback_data*) ;

struct unw_table_entry *
_Unwind_FindTableEntry (void *pc, unsigned long *segment_base,
                        unsigned long *gp)
{
  struct unw_ia64_callback_data data;

  data.pc = (Elf64_Addr) pc;
  data.segment_base = segment_base;
  data.gp = gp;
  data.ret = ((void*)0);

  if (dl_iterate_phdr (_Unwind_IteratePhdrCallback, &data) < 0)
    return ((void*)0);

  return data.ret;
}
