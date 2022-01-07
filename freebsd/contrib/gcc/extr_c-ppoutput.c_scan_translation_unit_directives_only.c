
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _cpp_dir_only_callbacks {int maybe_print_line; int print_lines; } ;
typedef int cpp_reader ;


 int _cpp_preprocess_dir_only (int *,struct _cpp_dir_only_callbacks*) ;
 int maybe_print_line ;
 int print_lines_directives_only ;

__attribute__((used)) static void
scan_translation_unit_directives_only (cpp_reader *pfile)
{
  struct _cpp_dir_only_callbacks cb;

  cb.print_lines = print_lines_directives_only;
  cb.maybe_print_line = maybe_print_line;

  _cpp_preprocess_dir_only (pfile, &cb);
}
