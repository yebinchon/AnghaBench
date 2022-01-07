
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_5__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int (* size_print_fn ) (TYPE_1__ const*) ;int (* value_print_fn ) (TYPE_1__ const*) ;} ;
struct TYPE_6__ {scalar_t__ st_size; } ;
typedef TYPE_1__ GElf_Sym ;


 int IS_UNDEF_SYM_TYPE (char) ;
 int PRINT_DEMANGLED_NAME (char*,char const*) ;
 TYPE_5__ nm_opts ;
 int printf (char*,...) ;
 int stub1 (TYPE_1__ const*) ;
 int stub2 (TYPE_1__ const*) ;

__attribute__((used)) static void
sym_elem_print_all_portable(char type, const char *sec, const GElf_Sym *sym,
    const char *name)
{

 if (sec == ((void*)0) || sym == ((void*)0) || name == ((void*)0) ||
     nm_opts.value_print_fn == ((void*)0))
  return;

 PRINT_DEMANGLED_NAME("%s", name);
 printf(" %c ", type);
 if (!IS_UNDEF_SYM_TYPE(type)) {
  nm_opts.value_print_fn(sym);
  printf(" ");
  if (sym->st_size != 0)
   nm_opts.size_print_fn(sym);
 } else
  printf("        ");
}
