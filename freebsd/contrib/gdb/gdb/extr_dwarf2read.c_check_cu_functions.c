
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct function_range {scalar_t__ lowpc; scalar_t__ highpc; int seen_line; int name; struct function_range* next; } ;
struct dwarf2_cu {struct function_range* cached_fn; struct function_range* first_fn; } ;
typedef scalar_t__ CORE_ADDR ;


 int complaint (int *,char*,unsigned long,int ) ;
 int symfile_complaints ;

__attribute__((used)) static CORE_ADDR
check_cu_functions (CORE_ADDR address, struct dwarf2_cu *cu)
{
  struct function_range *fn;


  if (!cu->first_fn)
    return address;

  if (!cu->cached_fn)
    cu->cached_fn = cu->first_fn;

  fn = cu->cached_fn;
  while (fn)
    if (fn->lowpc <= address && fn->highpc > address)
      goto found;
    else
      fn = fn->next;

  fn = cu->first_fn;
  while (fn && fn != cu->cached_fn)
    if (fn->lowpc <= address && fn->highpc > address)
      goto found;
    else
      fn = fn->next;

  return address;

 found:
  if (fn->seen_line)
    return address;
  if (address != fn->lowpc)
    complaint (&symfile_complaints,
        "misplaced first line number at 0x%lx for '%s'",
        (unsigned long) address, fn->name);
  fn->seen_line = 1;
  return fn->lowpc;
}
