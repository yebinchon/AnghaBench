
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int symbolS ;
struct TYPE_5__ {int st_other; } ;
struct TYPE_6__ {TYPE_1__ internal_elf_sym; } ;
typedef TYPE_2__ elf_symbol_type ;
typedef int asymbol ;


 int SKIP_WHITESPACE () ;
 int assert (TYPE_2__*) ;
 int bfd_asymbol_bfd (int *) ;
 int demand_empty_rest_of_line () ;
 TYPE_2__* elf_symbol_from (int ,int *) ;
 int get_symbol_end () ;
 char* input_line_pointer ;
 int * symbol_find_or_make (char*) ;
 int * symbol_get_bfdsym (int *) ;

__attribute__((used)) static void
obj_elf_visibility (int visibility)
{
  char *name;
  int c;
  symbolS *symbolP;
  asymbol *bfdsym;
  elf_symbol_type *elfsym;

  do
    {
      name = input_line_pointer;
      c = get_symbol_end ();
      symbolP = symbol_find_or_make (name);
      *input_line_pointer = c;

      SKIP_WHITESPACE ();

      bfdsym = symbol_get_bfdsym (symbolP);
      elfsym = elf_symbol_from (bfd_asymbol_bfd (bfdsym), bfdsym);

      assert (elfsym);

      elfsym->internal_elf_sym.st_other &= ~3;
      elfsym->internal_elf_sym.st_other |= visibility;

      if (c == ',')
 {
   input_line_pointer ++;

   SKIP_WHITESPACE ();

   if (*input_line_pointer == '\n')
     c = '\n';
 }
    }
  while (c == ',');

  demand_empty_rest_of_line ();
}
