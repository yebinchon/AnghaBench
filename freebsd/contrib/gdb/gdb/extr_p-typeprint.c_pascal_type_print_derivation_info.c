
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ui_file {int dummy; } ;
struct type {int dummy; } ;


 scalar_t__ BASETYPE_VIA_PUBLIC (struct type*,int) ;
 scalar_t__ BASETYPE_VIA_VIRTUAL (struct type*,int) ;
 int TYPE_BASECLASS (struct type*,int) ;
 int TYPE_N_BASECLASSES (struct type*) ;
 int fprintf_filtered (struct ui_file*,char*,char*,...) ;
 int fputs_filtered (char*,struct ui_file*) ;
 char* type_name_no_tag (int ) ;

__attribute__((used)) static void
pascal_type_print_derivation_info (struct ui_file *stream, struct type *type)
{
  char *name;
  int i;

  for (i = 0; i < TYPE_N_BASECLASSES (type); i++)
    {
      fputs_filtered (i == 0 ? ": " : ", ", stream);
      fprintf_filtered (stream, "%s%s ",
   BASETYPE_VIA_PUBLIC (type, i) ? "public" : "private",
   BASETYPE_VIA_VIRTUAL (type, i) ? " virtual" : "");
      name = type_name_no_tag (TYPE_BASECLASS (type, i));
      fprintf_filtered (stream, "%s", name ? name : "(null)");
    }
  if (i > 0)
    {
      fputs_filtered (" ", stream);
    }
}
