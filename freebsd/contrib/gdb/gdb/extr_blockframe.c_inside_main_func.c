
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct symbol {int dummy; } ;
struct obj_section {scalar_t__ endaddr; } ;
struct minimal_symbol {int dummy; } ;
typedef int asection ;
struct TYPE_4__ {scalar_t__ main_func_lowpc; scalar_t__ main_func_highpc; } ;
struct TYPE_5__ {TYPE_1__ ei; } ;
typedef scalar_t__ CORE_ADDR ;


 scalar_t__ BLOCK_END (int ) ;
 scalar_t__ BLOCK_START (int ) ;
 scalar_t__ INVALID_ENTRY_HIGHPC ;
 scalar_t__ INVALID_ENTRY_LOWPC ;
 scalar_t__ LOC_BLOCK ;
 scalar_t__ MSYMBOL_TYPE (struct minimal_symbol*) ;
 int * SYMBOL_BFD_SECTION (struct minimal_symbol*) ;
 int SYMBOL_BLOCK_VALUE (struct symbol*) ;
 scalar_t__ SYMBOL_CLASS (struct symbol*) ;
 int * SYMBOL_LINKAGE_NAME (struct minimal_symbol*) ;
 scalar_t__ SYMBOL_VALUE_ADDRESS (struct minimal_symbol*) ;
 struct symbol* find_pc_function (scalar_t__) ;
 struct obj_section* find_pc_sect_section (scalar_t__,int *) ;
 struct minimal_symbol* lookup_minimal_symbol (int ,int *,TYPE_2__*) ;
 int main_name () ;
 scalar_t__ mst_text ;
 TYPE_2__* symfile_objfile ;

int
inside_main_func (CORE_ADDR pc)
{
  struct minimal_symbol *msymbol;

  if (symfile_objfile == 0)
    return 0;

  msymbol = lookup_minimal_symbol (main_name (), ((void*)0), symfile_objfile);




  if (msymbol != ((void*)0)
      && symfile_objfile->ei.main_func_lowpc == INVALID_ENTRY_LOWPC
      && symfile_objfile->ei.main_func_highpc == INVALID_ENTRY_HIGHPC)
    {
      struct symbol *mainsym =
 find_pc_function (SYMBOL_VALUE_ADDRESS (msymbol));

      if (mainsym && SYMBOL_CLASS (mainsym) == LOC_BLOCK)
 {
   symfile_objfile->ei.main_func_lowpc =
     BLOCK_START (SYMBOL_BLOCK_VALUE (mainsym));
   symfile_objfile->ei.main_func_highpc =
     BLOCK_END (SYMBOL_BLOCK_VALUE (mainsym));
 }
    }



  if (msymbol != ((void*)0) && MSYMBOL_TYPE (msymbol) == mst_text)
    {
      CORE_ADDR maddr = SYMBOL_VALUE_ADDRESS (msymbol);
      asection *msect = SYMBOL_BFD_SECTION (msymbol);
      struct obj_section *osect = find_pc_sect_section (maddr, msect);

      if (osect != ((void*)0))
 {
   int i;




   for (i = 1; SYMBOL_LINKAGE_NAME (msymbol + i) != ((void*)0); i++)
     {
       if (SYMBOL_VALUE_ADDRESS (msymbol + i) != maddr
    && SYMBOL_BFD_SECTION (msymbol + i) == msect)
  break;
     }

   symfile_objfile->ei.main_func_lowpc = maddr;




   if (SYMBOL_LINKAGE_NAME (msymbol + i) != ((void*)0)
       && SYMBOL_VALUE_ADDRESS (msymbol + i) < osect->endaddr)
     symfile_objfile->ei.main_func_highpc =
       SYMBOL_VALUE_ADDRESS (msymbol + i);
   else



     symfile_objfile->ei.main_func_highpc = osect->endaddr;
 }
    }

  return (symfile_objfile->ei.main_func_lowpc <= pc
   && symfile_objfile->ei.main_func_highpc > pc);
}
