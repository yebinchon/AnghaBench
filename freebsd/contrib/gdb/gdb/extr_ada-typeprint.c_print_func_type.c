
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ui_file {int dummy; } ;
struct type {int dummy; } ;


 scalar_t__ TYPE_CODE (int ) ;
 scalar_t__ TYPE_CODE_VOID ;
 int TYPE_FIELD_TYPE (struct type*,int) ;
 int TYPE_NFIELDS (struct type*) ;
 int TYPE_TARGET_TYPE (struct type*) ;
 int ada_print_type (int ,char*,struct ui_file*,int,int ) ;
 int fprintf_filtered (struct ui_file*,char*,...) ;
 int fputs_filtered (char*,struct ui_file*) ;
 int wrap_here (char*) ;

__attribute__((used)) static void
print_func_type (struct type *type, struct ui_file *stream, char *name)
{
  int i, len = TYPE_NFIELDS (type);

  if (TYPE_CODE (TYPE_TARGET_TYPE (type)) == TYPE_CODE_VOID)
    fprintf_filtered (stream, "procedure");
  else
    fprintf_filtered (stream, "function");

  if (name != ((void*)0) && name[0] != '\0')
    fprintf_filtered (stream, " %s", name);

  if (len > 0)
    {
      fprintf_filtered (stream, " (");
      for (i = 0; i < len; i += 1)
 {
   if (i > 0)
     {
       fputs_filtered ("; ", stream);
       wrap_here ("    ");
     }
   fprintf_filtered (stream, "a%d: ", i + 1);
   ada_print_type (TYPE_FIELD_TYPE (type, i), "", stream, -1, 0);
 }
      fprintf_filtered (stream, ")");
    }

  if (TYPE_CODE (TYPE_TARGET_TYPE (type)) != TYPE_CODE_VOID)
    {
      fprintf_filtered (stream, " return ");
      ada_print_type (TYPE_TARGET_TYPE (type), "", stream, 0, 0);
    }
}
