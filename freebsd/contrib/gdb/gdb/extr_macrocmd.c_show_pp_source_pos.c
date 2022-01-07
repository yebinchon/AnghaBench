
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ui_file {int dummy; } ;
struct macro_source_file {int included_at_line; struct macro_source_file* included_by; int filename; } ;


 int fprintf_filtered (struct ui_file*,char*,int ,int) ;
 struct ui_file* gdb_stdout ;

__attribute__((used)) static void
show_pp_source_pos (struct ui_file *stream,
                    struct macro_source_file *file,
                    int line)
{
  fprintf_filtered (stream, "%s:%d\n", file->filename, line);

  while (file->included_by)
    {
      fprintf_filtered (gdb_stdout, "  included at %s:%d\n",
                        file->included_by->filename,
                        file->included_at_line);
      file = file->included_by;
    }
}
