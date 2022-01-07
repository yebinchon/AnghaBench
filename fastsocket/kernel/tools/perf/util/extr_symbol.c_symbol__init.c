
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct symbol_name_rb_node {int dummy; } ;
struct symbol {int dummy; } ;
struct TYPE_2__ {int initialized; int priv_size; char* field_sep; char* symfs; int dso_list; int comm_list; int kptr_restrict; int sym_list_str; int sym_list; int comm_list_str; int dso_list_str; scalar_t__ try_vmlinux_path; scalar_t__ sort_by_name; } ;


 int PERF_ALIGN (int,int) ;
 int free (void*) ;
 int pr_err (char*) ;
 char* realpath (char*,int *) ;
 scalar_t__ setup_list (int *,int ,char*) ;
 scalar_t__ strcmp (char const*,char*) ;
 int strlist__delete (int ) ;
 int symbol__elf_init () ;
 int symbol__read_kptr_restrict () ;
 TYPE_1__ symbol_conf ;
 scalar_t__ vmlinux_path__init () ;

int symbol__init(void)
{
 const char *symfs;

 if (symbol_conf.initialized)
  return 0;

 symbol_conf.priv_size = PERF_ALIGN(symbol_conf.priv_size, sizeof(u64));

 symbol__elf_init();

 if (symbol_conf.sort_by_name)
  symbol_conf.priv_size += (sizeof(struct symbol_name_rb_node) -
       sizeof(struct symbol));

 if (symbol_conf.try_vmlinux_path && vmlinux_path__init() < 0)
  return -1;

 if (symbol_conf.field_sep && *symbol_conf.field_sep == '.') {
  pr_err("'.' is the only non valid --field-separator argument\n");
  return -1;
 }

 if (setup_list(&symbol_conf.dso_list,
         symbol_conf.dso_list_str, "dso") < 0)
  return -1;

 if (setup_list(&symbol_conf.comm_list,
         symbol_conf.comm_list_str, "comm") < 0)
  goto out_free_dso_list;

 if (setup_list(&symbol_conf.sym_list,
         symbol_conf.sym_list_str, "symbol") < 0)
  goto out_free_comm_list;





 symfs = realpath(symbol_conf.symfs, ((void*)0));
 if (symfs == ((void*)0))
  symfs = symbol_conf.symfs;
 if (strcmp(symfs, "/") == 0)
  symbol_conf.symfs = "";
 if (symfs != symbol_conf.symfs)
  free((void *)symfs);

 symbol_conf.kptr_restrict = symbol__read_kptr_restrict();

 symbol_conf.initialized = 1;
 return 0;

out_free_comm_list:
 strlist__delete(symbol_conf.comm_list);
out_free_dso_list:
 strlist__delete(symbol_conf.dso_list);
 return -1;
}
