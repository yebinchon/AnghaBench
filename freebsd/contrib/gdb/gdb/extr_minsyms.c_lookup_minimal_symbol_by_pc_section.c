
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct objfile {int minimal_symbol_count; struct minimal_symbol* msymbols; struct objfile* next; } ;
struct obj_section {int dummy; } ;
struct minimal_symbol {scalar_t__ type; } ;
typedef int asection ;
typedef scalar_t__ CORE_ADDR ;


 int * SYMBOL_BFD_SECTION (struct minimal_symbol*) ;
 scalar_t__ SYMBOL_VALUE_ADDRESS (struct minimal_symbol*) ;
 struct obj_section* find_pc_section (scalar_t__) ;
 scalar_t__ mst_abs ;
 struct objfile* object_files ;

struct minimal_symbol *
lookup_minimal_symbol_by_pc_section (CORE_ADDR pc, asection *section)
{
  int lo;
  int hi;
  int new;
  struct objfile *objfile;
  struct minimal_symbol *msymbol;
  struct minimal_symbol *best_symbol = ((void*)0);
  struct obj_section *pc_section;




  pc_section = find_pc_section (pc);
  if (pc_section == ((void*)0))
    return ((void*)0);
  for (objfile = object_files;
       objfile != ((void*)0);
       objfile = objfile->next)
    {






      if (objfile->minimal_symbol_count > 0)
 {
          msymbol = objfile->msymbols;
   lo = 0;
   hi = objfile->minimal_symbol_count - 1;
   if (pc >= SYMBOL_VALUE_ADDRESS (&msymbol[lo]))
     {
       while (SYMBOL_VALUE_ADDRESS (&msymbol[hi]) > pc)
  {


    new = (lo + hi) / 2;
    if ((SYMBOL_VALUE_ADDRESS (&msymbol[new]) >= pc) ||
        (lo == new))
      {
        hi = new;
      }
    else
      {
        lo = new;
      }
  }




       while (hi < objfile->minimal_symbol_count - 1
       && (SYMBOL_VALUE_ADDRESS (&msymbol[hi])
    == SYMBOL_VALUE_ADDRESS (&msymbol[hi + 1])))
  hi++;
       while (hi >= 0
       && msymbol[hi].type == mst_abs)
  --hi;



       if (section)
  while (hi >= 0



         && SYMBOL_BFD_SECTION (&msymbol[hi]) != ((void*)0)
         && SYMBOL_BFD_SECTION (&msymbol[hi]) != section)
    --hi;

       if (hi >= 0
    && ((best_symbol == ((void*)0)) ||
        (SYMBOL_VALUE_ADDRESS (best_symbol) <
         SYMBOL_VALUE_ADDRESS (&msymbol[hi]))))
  {
    best_symbol = &msymbol[hi];
  }
     }
 }
    }
  return (best_symbol);
}
