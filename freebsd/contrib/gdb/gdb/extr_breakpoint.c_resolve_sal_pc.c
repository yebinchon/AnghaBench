
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct symtab_and_line {scalar_t__ section; int pc; TYPE_1__* symtab; int line; } ;
struct symbol {int dummy; } ;
typedef struct symbol minimal_symbol ;
struct blockvector {int dummy; } ;
struct block {int dummy; } ;
struct TYPE_3__ {char* filename; int objfile; } ;
typedef int CORE_ADDR ;


 struct block* BLOCKVECTOR_BLOCK (struct blockvector*,int) ;
 void* SYMBOL_BFD_SECTION (struct symbol*) ;
 struct symbol* block_function (struct block*) ;
 struct blockvector* blockvector_for_pc_sect (int ,int ,int*,TYPE_1__*) ;
 int error (char*,int ,char*) ;
 int find_line_pc (TYPE_1__*,int ,int *) ;
 int fixup_symbol_section (struct symbol*,int ) ;
 struct symbol* lookup_minimal_symbol_by_pc (int ) ;

void
resolve_sal_pc (struct symtab_and_line *sal)
{
  CORE_ADDR pc;

  if (sal->pc == 0 && sal->symtab != ((void*)0))
    {
      if (!find_line_pc (sal->symtab, sal->line, &pc))
 error ("No line %d in file \"%s\".",
        sal->line, sal->symtab->filename);
      sal->pc = pc;
    }

  if (sal->section == 0 && sal->symtab != ((void*)0))
    {
      struct blockvector *bv;
      struct block *b;
      struct symbol *sym;
      int index;

      bv = blockvector_for_pc_sect (sal->pc, 0, &index, sal->symtab);
      if (bv != ((void*)0))
 {
   b = BLOCKVECTOR_BLOCK (bv, index);
   sym = block_function (b);
   if (sym != ((void*)0))
     {
       fixup_symbol_section (sym, sal->symtab->objfile);
       sal->section = SYMBOL_BFD_SECTION (sym);
     }
   else
     {





       struct minimal_symbol *msym;

       msym = lookup_minimal_symbol_by_pc (sal->pc);
       if (msym)
  sal->section = SYMBOL_BFD_SECTION (msym);
     }
 }
    }
}
