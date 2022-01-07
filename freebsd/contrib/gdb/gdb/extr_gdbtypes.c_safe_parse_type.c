
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ui_file {int dummy; } ;
struct type {int dummy; } ;


 struct type* builtin_type_void ;
 int gdb_parse_and_eval_type (char*,int,struct type**) ;
 struct ui_file* gdb_stderr ;
 int ui_file_delete (struct ui_file*) ;
 struct ui_file* ui_file_new () ;

__attribute__((used)) static struct type *
safe_parse_type (char *p, int length)
{
  struct ui_file *saved_gdb_stderr;
  struct type *type;


  saved_gdb_stderr = gdb_stderr;
  gdb_stderr = ui_file_new ();


  if (!gdb_parse_and_eval_type (p, length, &type))
    type = builtin_type_void;


  ui_file_delete (gdb_stderr);
  gdb_stderr = saved_gdb_stderr;

  return type;
}
