
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpp_demangle_data {int output; int subst; int tmpl; int class_type; int cmd; } ;


 int vector_read_cmd_dest (int *) ;
 int vector_str_dest (int *) ;

__attribute__((used)) static void
cpp_demangle_data_dest(struct cpp_demangle_data *d)
{

 if (d == ((void*)0))
  return;

 vector_read_cmd_dest(&d->cmd);
 vector_str_dest(&d->class_type);
 vector_str_dest(&d->tmpl);
 vector_str_dest(&d->subst);
 vector_str_dest(&d->output);
}
