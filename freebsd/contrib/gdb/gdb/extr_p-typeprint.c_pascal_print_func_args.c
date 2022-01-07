
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ui_file {int dummy; } ;
struct type {int dummy; } ;


 int TYPE_FIELD_TYPE (struct type*,int) ;
 int TYPE_NFIELDS (struct type*) ;
 int fprintf_filtered (struct ui_file*,char*) ;
 int fputs_filtered (char*,struct ui_file*) ;
 int pascal_print_type (int ,char*,struct ui_file*,int,int ) ;
 int wrap_here (char*) ;

__attribute__((used)) static void
pascal_print_func_args (struct type *type, struct ui_file *stream)
{
  int i, len = TYPE_NFIELDS (type);
  if (len)
    {
      fprintf_filtered (stream, "(");
    }
  for (i = 0; i < len; i++)
    {
      if (i > 0)
 {
   fputs_filtered (", ", stream);
   wrap_here ("    ");
 }





      pascal_print_type (TYPE_FIELD_TYPE (type, i), ""
    ,stream, -1, 0);
    }
  if (len)
    {
      fprintf_filtered (stream, ")");
    }
}
