
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_9__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {scalar_t__ t; int print_size; int (* value_print_fn ) (TYPE_1__ const*) ;int (* size_print_fn ) (TYPE_1__ const*) ;int * sort_fn; } ;
struct TYPE_10__ {int st_size; } ;
typedef TYPE_1__ GElf_Sym ;


 scalar_t__ ELFCLASS32 ;
 scalar_t__ IS_UNDEF_SYM_TYPE (char) ;
 int PRINT_DEMANGLED_NAME (char*,char const*) ;
 scalar_t__ RADIX_HEX ;
 int cmp_size ;
 scalar_t__ nm_elfclass ;
 TYPE_9__ nm_opts ;
 int printf (char*,...) ;
 int stub1 (TYPE_1__ const*) ;
 int stub2 (TYPE_1__ const*) ;
 int stub3 (TYPE_1__ const*) ;
 int stub4 (TYPE_1__ const*) ;
 int stub5 (TYPE_1__ const*) ;
 int stub6 (TYPE_1__ const*) ;

__attribute__((used)) static void
sym_elem_print_all(char type, const char *sec, const GElf_Sym *sym,
    const char *name)
{

 if (sec == ((void*)0) || sym == ((void*)0) || name == ((void*)0) ||
     nm_opts.value_print_fn == ((void*)0))
  return;

 if (IS_UNDEF_SYM_TYPE(type)) {
  if (nm_opts.t == RADIX_HEX && nm_elfclass == ELFCLASS32)
   printf("%-8s", "");
  else
   printf("%-16s", "");
 } else {
  switch ((nm_opts.sort_fn == & cmp_size ? 2 : 0) +
      nm_opts.print_size) {
  case 3:
   if (sym->st_size != 0) {
    nm_opts.value_print_fn(sym);
    printf(" ");
    nm_opts.size_print_fn(sym);
   }
   break;

  case 2:
   if (sym->st_size != 0)
    nm_opts.size_print_fn(sym);
   break;

  case 1:
   nm_opts.value_print_fn(sym);
   if (sym->st_size != 0) {
    printf(" ");
    nm_opts.size_print_fn(sym);
   }
   break;

  case 0:
  default:
   nm_opts.value_print_fn(sym);
  }
 }

 printf(" %c ", type);
 PRINT_DEMANGLED_NAME("%s", name);
}
