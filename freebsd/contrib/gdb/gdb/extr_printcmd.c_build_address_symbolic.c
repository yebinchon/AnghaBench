
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct symtab_and_line {int line; TYPE_1__* symtab; } ;
struct symtab {char* filename; } ;
struct symbol {int line; } ;
struct minimal_symbol {int line; } ;
typedef int asection ;
struct TYPE_2__ {char* filename; } ;
typedef scalar_t__ CORE_ADDR ;


 scalar_t__ BLOCK_START (int ) ;
 char* DEPRECATED_SYMBOL_NAME (struct symbol*) ;
 int SYMBOL_BLOCK_VALUE (struct symbol*) ;
 char* SYMBOL_PRINT_NAME (struct symbol*) ;
 scalar_t__ SYMBOL_VALUE_ADDRESS (struct symbol*) ;
 scalar_t__ asm_demangle ;
 int * find_pc_overlay (scalar_t__) ;
 struct symbol* find_pc_sect_function (scalar_t__,int *) ;
 struct symtab_and_line find_pc_sect_line (scalar_t__,int *,int ) ;
 struct symbol* lookup_minimal_symbol_by_pc_section (scalar_t__,int *) ;
 scalar_t__ max_symbolic_offset ;
 scalar_t__ overlay_debugging ;
 scalar_t__ overlay_mapped_address (scalar_t__,int *) ;
 scalar_t__ pc_in_unmapped_range (scalar_t__,int *) ;
 scalar_t__ print_symbol_filename ;
 char* xstrdup (char*) ;

int
build_address_symbolic (CORE_ADDR addr,
   int do_demangle,
   char **name,
   int *offset,
   char **filename,
   int *line,
   int *unmapped)
{
  struct minimal_symbol *msymbol;
  struct symbol *symbol;
  struct symtab *symtab = 0;
  CORE_ADDR name_location = 0;
  asection *section = 0;
  char *name_temp = "";


  *unmapped = 0;



  if (overlay_debugging)
    {
      section = find_pc_overlay (addr);
      if (pc_in_unmapped_range (addr, section))
 {
   *unmapped = 1;
   addr = overlay_mapped_address (addr, section);
 }
    }
  msymbol = lookup_minimal_symbol_by_pc_section (addr, section);
  symbol = find_pc_sect_function (addr, section);

  if (symbol)
    {
      name_location = BLOCK_START (SYMBOL_BLOCK_VALUE (symbol));
      if (do_demangle || asm_demangle)
 name_temp = SYMBOL_PRINT_NAME (symbol);
      else
 name_temp = DEPRECATED_SYMBOL_NAME (symbol);
    }

  if (msymbol != ((void*)0))
    {
      if (SYMBOL_VALUE_ADDRESS (msymbol) > name_location || symbol == ((void*)0))
 {


   symbol = 0;
   symtab = 0;
   name_location = SYMBOL_VALUE_ADDRESS (msymbol);
   if (do_demangle || asm_demangle)
     name_temp = SYMBOL_PRINT_NAME (msymbol);
   else
     name_temp = DEPRECATED_SYMBOL_NAME (msymbol);
 }
    }
  if (symbol == ((void*)0) && msymbol == ((void*)0))
    return 1;
  if (addr > name_location + max_symbolic_offset
      && name_location + max_symbolic_offset > name_location)
    return 1;

  *offset = addr - name_location;

  *name = xstrdup (name_temp);

  if (print_symbol_filename)
    {
      struct symtab_and_line sal;

      sal = find_pc_sect_line (addr, section, 0);

      if (sal.symtab)
 {
   *filename = xstrdup (sal.symtab->filename);
   *line = sal.line;
 }
      else if (symtab && symbol && symbol->line)
 {
   *filename = xstrdup (symtab->filename);
   *line = symbol->line;
 }
      else if (symtab)
 {
   *filename = xstrdup (symtab->filename);
   *line = -1;
 }
    }
  return 0;
}
