
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct source_cleanup_lines_args {int old_error_pre_print; int old_pre_error; int old_file; int old_line; } ;


 int error_pre_print ;
 int source_file_name ;
 int source_line_number ;
 int source_pre_error ;

__attribute__((used)) static void
source_cleanup_lines (void *args)
{
  struct source_cleanup_lines_args *p =
  (struct source_cleanup_lines_args *) args;
  source_line_number = p->old_line;
  source_file_name = p->old_file;
  source_pre_error = p->old_pre_error;
  error_pre_print = p->old_error_pre_print;
}
