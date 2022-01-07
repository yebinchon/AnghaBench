
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ui_file {int dummy; } ;
struct type {int dummy; } ;
typedef enum val_prettyprint { ____Placeholder_val_prettyprint } val_prettyprint ;


 int CHECK_TYPEDEF (struct type*) ;
 int fprintf_filtered (struct ui_file*,char*) ;
 scalar_t__ print_field_values (struct type*,char*,struct ui_file*,int,int,int,int ,struct type*,char*) ;
 int print_spaces_filtered (int,struct ui_file*) ;

__attribute__((used)) static void
print_record (struct type *type, char *valaddr, struct ui_file *stream,
       int format, int recurse, enum val_prettyprint pretty)
{
  CHECK_TYPEDEF (type);

  fprintf_filtered (stream, "(");

  if (print_field_values (type, valaddr, stream, format, recurse, pretty,
     0, type, valaddr) != 0 && pretty)
    {
      fprintf_filtered (stream, "\n");
      print_spaces_filtered (2 * recurse, stream);
    }

  fprintf_filtered (stream, ")");
}
