
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ui_file {int dummy; } ;
struct type {int dummy; } ;


 int c_type_print_varspec_suffix (struct type*,struct ui_file*,int,int ,int) ;
 int fputs_filtered (char*,struct ui_file*) ;
 int java_type_print_base (struct type*,struct ui_file*,int,int) ;
 int * strchr (char*,char) ;

void
java_print_type (struct type *type, char *varstring, struct ui_file *stream,
   int show, int level)
{
  int demangled_args;

  java_type_print_base (type, stream, show, level);

  if (varstring != ((void*)0) && *varstring != '\0')
    {
      fputs_filtered (" ", stream);
      fputs_filtered (varstring, stream);
    }




  demangled_args = strchr (varstring, '(') != ((void*)0);
  c_type_print_varspec_suffix (type, stream, show, 0, demangled_args);
}
