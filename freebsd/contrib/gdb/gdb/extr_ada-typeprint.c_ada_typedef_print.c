
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ui_file {int dummy; } ;
struct type {int dummy; } ;
struct symbol {int dummy; } ;


 int SYMBOL_PRINT_NAME (struct symbol*) ;
 int ada_name_prefix_len (int ) ;
 int fprintf_filtered (struct ui_file*,char*,int ,int ) ;
 int type_print (struct type*,char*,struct ui_file*,int) ;

void
ada_typedef_print (struct type *type, struct symbol *new,
     struct ui_file *stream)
{
  fprintf_filtered (stream, "type %.*s is ",
      ada_name_prefix_len (SYMBOL_PRINT_NAME (new)),
      SYMBOL_PRINT_NAME (new));
  type_print (type, "", stream, 1);
}
