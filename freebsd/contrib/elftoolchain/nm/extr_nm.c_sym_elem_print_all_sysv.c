
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_5__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int (* size_print_fn ) (TYPE_1__ const*) ;int (* value_print_fn ) (TYPE_1__ const*) ;} ;
struct TYPE_6__ {int st_info; scalar_t__ st_size; } ;
typedef TYPE_1__ GElf_Sym ;


 scalar_t__ IS_UNDEF_SYM_TYPE (char) ;
 int PRINT_DEMANGLED_NAME (char*,char const*) ;







 TYPE_5__ nm_opts ;
 int printf (char*,...) ;
 int stub1 (TYPE_1__ const*) ;
 int stub2 (TYPE_1__ const*) ;

__attribute__((used)) static void
sym_elem_print_all_sysv(char type, const char *sec, const GElf_Sym *sym,
    const char *name)
{

 if (sec == ((void*)0) || sym == ((void*)0) || name == ((void*)0) ||
     nm_opts.value_print_fn == ((void*)0))
  return;

 PRINT_DEMANGLED_NAME("%-20s|", name);
 if (IS_UNDEF_SYM_TYPE(type))
  printf("                ");
 else
  nm_opts.value_print_fn(sym);

 printf("|   %c  |", type);

 switch (sym->st_info & 0xf) {
 case 129:
  printf("%18s|", "OBJECT");
  break;

 case 133:
  printf("%18s|", "FUNC");
  break;

 case 128:
  printf("%18s|", "SECTION");
  break;

 case 134:
  printf("%18s|", "FILE");
  break;

 case 131:
  printf("%18s|", "LOPROC");
  break;

 case 132:
  printf("%18s|", "HIPROC");
  break;

 case 130:
 default:
  printf("%18s|", "NOTYPE");
 }

 if (sym->st_size != 0)
  nm_opts.size_print_fn(sym);
 else
  printf("                ");

 printf("|     |%s", sec);
}
