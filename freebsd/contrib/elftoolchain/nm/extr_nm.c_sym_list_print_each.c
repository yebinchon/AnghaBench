
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct var_info_head {int dummy; } ;
struct sym_print_data {char* filename; char* objname; int sh_num; char** s_table; int t_table; } ;
struct sym_entry {int * name; TYPE_1__* sym; } ;
struct line_info_head {int dummy; } ;
struct func_info_head {int dummy; } ;
struct TYPE_6__ {scalar_t__ print_name; int debug_line; int (* elem_print_fn ) (char,char const*,TYPE_1__*,int *) ;} ;
struct TYPE_5__ {int st_shndx; } ;


 scalar_t__ CHECK_SYM_PRINT_DATA (struct sym_print_data*) ;
 int IS_UNDEF_SYM_TYPE (char) ;
 scalar_t__ PRINT_NAME_FULL ;







 int assert (int ) ;
 char get_sym_type (TYPE_1__*,int ) ;
 TYPE_3__ nm_opts ;
 int print_lineno (struct sym_entry*,struct func_info_head*,struct var_info_head*,struct line_info_head*) ;
 int printf (char*,...) ;
 int stub1 (char,char const*,TYPE_1__*,int *) ;
 int sym_elem_print_all_portable (char,char const*,TYPE_1__*,int *) ;

__attribute__((used)) static void
sym_list_print_each(struct sym_entry *ep, struct sym_print_data *p,
    struct func_info_head *func_info, struct var_info_head *var_info,
    struct line_info_head *line_info)
{
 const char *sec;
 char type;

 if (ep == ((void*)0) || CHECK_SYM_PRINT_DATA(p))
  return;

 assert(ep->name != ((void*)0));
 assert(ep->sym != ((void*)0));

 type = get_sym_type(ep->sym, p->t_table);

 if (nm_opts.print_name == PRINT_NAME_FULL) {
  printf("%s", p->filename);
  if (nm_opts.elem_print_fn == &sym_elem_print_all_portable) {
   if (p->objname != ((void*)0))
    printf("[%s]", p->objname);
   printf(": ");
  } else {
   if (p->objname != ((void*)0))
    printf(":%s", p->objname);
   printf(":");
  }
 }

 switch (ep->sym->st_shndx) {
 case 128:

  sec = "*LOPROC*";
  break;
 case 131:
  sec = "*HIPROC*";
  break;
 case 129:
  sec = "*LOOS*";
  break;
 case 132:
  sec = "*HIOS*";
  break;
 case 134:
  sec = "*ABS*";
  break;
 case 133:
  sec = "*COM*";
  break;
 case 130:

  sec = "*HIRESERVE*";
  break;
 default:
  if (ep->sym->st_shndx > p->sh_num)
   return;
  sec = p->s_table[ep->sym->st_shndx];
  break;
 }

 nm_opts.elem_print_fn(type, sec, ep->sym, ep->name);

 if (nm_opts.debug_line == 1 && !IS_UNDEF_SYM_TYPE(type))
  print_lineno(ep, func_info, var_info, line_info);

 printf("\n");
}
