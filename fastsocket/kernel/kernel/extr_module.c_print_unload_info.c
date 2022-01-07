
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
struct module {int dummy; } ;


 int seq_printf (struct seq_file*,char*) ;

__attribute__((used)) static inline void print_unload_info(struct seq_file *m, struct module *mod)
{

 seq_printf(m, " - -");
}
