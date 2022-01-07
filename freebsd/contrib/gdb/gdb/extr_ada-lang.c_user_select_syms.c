
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct symtab_and_line {int line; TYPE_1__* symtab; } ;
struct symtab {int filename; } ;
struct symbol {int dummy; } ;
struct block {int dummy; } ;
struct TYPE_2__ {char* filename; } ;


 scalar_t__ LOC_BLOCK ;
 scalar_t__ LOC_CONST ;
 scalar_t__ SYMBOL_CLASS (struct symbol*) ;
 scalar_t__ SYMBOL_LINE (struct symbol*) ;
 int SYMBOL_PRINT_NAME (struct symbol*) ;
 int * SYMBOL_TYPE (struct symbol*) ;
 scalar_t__ TYPE_CODE (int *) ;
 scalar_t__ TYPE_CODE_ENUM ;
 int * TYPE_NAME (int *) ;
 int ada_print_type (int *,int *,int ,int,int ) ;
 scalar_t__ alloca (int) ;
 int error (char*) ;
 struct symtab_and_line find_function_start_sal (struct symbol*,int) ;
 int gdb_stdout ;
 int get_selections (int*,int,int,int,char*) ;
 int printf_unfiltered (char*,...) ;
 int sort_choices (struct symbol**,struct block**,int) ;
 struct symtab* symtab_for_sym (struct symbol*) ;

int
user_select_syms (struct symbol *syms[], struct block *blocks[], int nsyms,
    int max_results)
{
  int i;
  int *chosen = (int *) alloca (sizeof (int) * nsyms);
  int n_chosen;
  int first_choice = (max_results == 1) ? 1 : 2;

  if (max_results < 1)
    error ("Request to select 0 symbols!");
  if (nsyms <= 1)
    return nsyms;

  printf_unfiltered ("[0] cancel\n");
  if (max_results > 1)
    printf_unfiltered ("[1] all\n");

  sort_choices (syms, blocks, nsyms);

  for (i = 0; i < nsyms; i += 1)
    {
      if (syms[i] == ((void*)0))
 continue;

      if (SYMBOL_CLASS (syms[i]) == LOC_BLOCK)
 {
   struct symtab_and_line sal = find_function_start_sal (syms[i], 1);
   printf_unfiltered ("[%d] %s at %s:%d\n",
        i + first_choice,
        SYMBOL_PRINT_NAME (syms[i]),
        sal.symtab == ((void*)0)
        ? "<no source file available>"
        : sal.symtab->filename, sal.line);
   continue;
 }
      else
 {
   int is_enumeral =
     (SYMBOL_CLASS (syms[i]) == LOC_CONST
      && SYMBOL_TYPE (syms[i]) != ((void*)0)
      && TYPE_CODE (SYMBOL_TYPE (syms[i])) == TYPE_CODE_ENUM);
   struct symtab *symtab = symtab_for_sym (syms[i]);

   if (SYMBOL_LINE (syms[i]) != 0 && symtab != ((void*)0))
     printf_unfiltered ("[%d] %s at %s:%d\n",
          i + first_choice,
          SYMBOL_PRINT_NAME (syms[i]),
          symtab->filename, SYMBOL_LINE (syms[i]));
   else if (is_enumeral && TYPE_NAME (SYMBOL_TYPE (syms[i])) != ((void*)0))
     {
       printf_unfiltered ("[%d] ", i + first_choice);
       ada_print_type (SYMBOL_TYPE (syms[i]), ((void*)0), gdb_stdout, -1, 0);
       printf_unfiltered ("'(%s) (enumeral)\n",
     SYMBOL_PRINT_NAME (syms[i]));
     }
   else if (symtab != ((void*)0))
     printf_unfiltered (is_enumeral
          ? "[%d] %s in %s (enumeral)\n"
          : "[%d] %s at %s:?\n",
          i + first_choice,
          SYMBOL_PRINT_NAME (syms[i]),
          symtab->filename);
   else
     printf_unfiltered (is_enumeral
          ? "[%d] %s (enumeral)\n"
          : "[%d] %s at ?\n",
          i + first_choice,
          SYMBOL_PRINT_NAME (syms[i]));
 }
    }

  n_chosen = get_selections (chosen, nsyms, max_results, max_results > 1,
        "overload-choice");

  for (i = 0; i < n_chosen; i += 1)
    {
      syms[i] = syms[chosen[i]];
      if (blocks != ((void*)0))
 blocks[i] = blocks[chosen[i]];
    }

  return n_chosen;
}
