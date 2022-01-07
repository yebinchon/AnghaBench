
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct objfile {int macro_cache; int objfile_obstack; } ;
struct macro_source_file {int dummy; } ;
struct line_header {int dummy; } ;


 char* file_full_name (int,struct line_header*,char const*) ;
 struct macro_source_file* macro_include (struct macro_source_file*,int,char*) ;
 struct macro_source_file* macro_set_main (scalar_t__,char*) ;
 scalar_t__ new_macro_table (int *,int ) ;
 scalar_t__ pending_macros ;
 int xfree (char*) ;

__attribute__((used)) static struct macro_source_file *
macro_start_file (int file, int line,
                  struct macro_source_file *current_file,
                  const char *comp_dir,
                  struct line_header *lh, struct objfile *objfile)
{

  char *full_name = file_full_name (file, lh, comp_dir);



  if (! pending_macros)
    pending_macros = new_macro_table (&objfile->objfile_obstack,
                                      objfile->macro_cache);

  if (! current_file)


    current_file = macro_set_main (pending_macros, full_name);
  else
    current_file = macro_include (current_file, line, full_name);

  xfree (full_name);

  return current_file;
}
