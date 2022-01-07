
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct varinfo {scalar_t__ stack; char* file; scalar_t__ addr; unsigned int line; int * sec; int * name; struct varinfo* prev_var; } ;
struct comp_unit {struct varinfo* variable_table; } ;
typedef scalar_t__ bfd_vma ;
typedef int bfd_boolean ;
typedef int asymbol ;
typedef int asection ;


 int FALSE ;
 int TRUE ;
 char* bfd_asymbol_name (int *) ;
 int * bfd_get_section (int *) ;
 scalar_t__ strcmp (char const*,int *) ;

__attribute__((used)) static bfd_boolean
lookup_symbol_in_variable_table (struct comp_unit *unit,
     asymbol *sym,
     bfd_vma addr,
     const char **filename_ptr,
     unsigned int *linenumber_ptr)
{
  const char *name = bfd_asymbol_name (sym);
  asection *sec = bfd_get_section (sym);
  struct varinfo* each;

  for (each = unit->variable_table; each; each = each->prev_var)
    if (each->stack == 0
 && each->file != ((void*)0)
 && each->name != ((void*)0)
 && each->addr == addr
 && (!each->sec || each->sec == sec)
 && strcmp (name, each->name) == 0)
      break;

  if (each)
    {
      each->sec = sec;
      *filename_ptr = each->file;
      *linenumber_ptr = each->line;
      return TRUE;
    }
  else
    return FALSE;
}
