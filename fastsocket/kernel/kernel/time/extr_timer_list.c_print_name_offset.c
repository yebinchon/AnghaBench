
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;


 int KSYM_NAME_LEN ;
 int SEQ_printf (struct seq_file*,char*,char*) ;
 scalar_t__ lookup_symbol_name (unsigned long,char*) ;

__attribute__((used)) static void print_name_offset(struct seq_file *m, void *sym)
{
 char symname[KSYM_NAME_LEN];

 if (lookup_symbol_name((unsigned long)sym, symname) < 0)
  SEQ_printf(m, "<%pK>", sym);
 else
  SEQ_printf(m, "%s", symname);
}
