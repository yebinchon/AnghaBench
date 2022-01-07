
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct arange {scalar_t__ low; scalar_t__ high; struct arange* next; } ;
struct funcinfo {char* file; unsigned int line; int * sec; struct arange arange; scalar_t__ name; struct funcinfo* prev_func; } ;
struct comp_unit {struct funcinfo* function_table; } ;
typedef scalar_t__ bfd_vma ;
typedef int bfd_boolean ;
typedef int asymbol ;
typedef int asection ;


 int FALSE ;
 int TRUE ;
 char* bfd_asymbol_name (int *) ;
 int * bfd_get_section (int *) ;
 scalar_t__ strcmp (char const*,scalar_t__) ;

__attribute__((used)) static bfd_boolean
lookup_symbol_in_function_table (struct comp_unit *unit,
     asymbol *sym,
     bfd_vma addr,
     const char **filename_ptr,
     unsigned int *linenumber_ptr)
{
  struct funcinfo* each_func;
  struct funcinfo* best_fit = ((void*)0);
  struct arange *arange;
  const char *name = bfd_asymbol_name (sym);
  asection *sec = bfd_get_section (sym);

  for (each_func = unit->function_table;
       each_func;
       each_func = each_func->prev_func)
    {
      for (arange = &each_func->arange;
    arange;
    arange = arange->next)
 {
   if ((!each_func->sec || each_func->sec == sec)
       && addr >= arange->low
       && addr < arange->high
       && each_func->name
       && strcmp (name, each_func->name) == 0
       && (!best_fit
    || ((arange->high - arange->low)
        < (best_fit->arange.high - best_fit->arange.low))))
     best_fit = each_func;
 }
    }

  if (best_fit)
    {
      best_fit->sec = sec;
      *filename_ptr = best_fit->file;
      *linenumber_ptr = best_fit->line;
      return TRUE;
    }
  else
    return FALSE;
}
