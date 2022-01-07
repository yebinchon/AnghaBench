
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ui_file {int dummy; } ;
struct cleanup {int dummy; } ;
typedef int CORE_ADDR ;


 scalar_t__ build_address_symbolic (int ,int,char**,int*,char**,int*,int*) ;
 int do_cleanups (struct cleanup*) ;
 int fprintf_filtered (struct ui_file*,char*,...) ;
 int fputs_filtered (char*,struct ui_file*) ;
 int free_current_contents ;
 struct cleanup* make_cleanup (int ,char**) ;
 scalar_t__ print_symbol_filename ;

void
print_address_symbolic (CORE_ADDR addr, struct ui_file *stream, int do_demangle,
   char *leadin)
{
  char *name = ((void*)0);
  char *filename = ((void*)0);
  int unmapped = 0;
  int offset = 0;
  int line = 0;


  struct cleanup *cleanup_chain = make_cleanup (free_current_contents, &name);
  make_cleanup (free_current_contents, &filename);

  if (build_address_symbolic (addr, do_demangle, &name, &offset, &filename, &line, &unmapped))
    {
      do_cleanups (cleanup_chain);
      return;
    }

  fputs_filtered (leadin, stream);
  if (unmapped)
    fputs_filtered ("<*", stream);
  else
    fputs_filtered ("<", stream);
  fputs_filtered (name, stream);
  if (offset != 0)
    fprintf_filtered (stream, "+%u", (unsigned int) offset);



  if (print_symbol_filename && filename != ((void*)0))
    {
      if (line != -1)
 fprintf_filtered (stream, " at %s:%d", filename, line);
      else
 fprintf_filtered (stream, " in %s", filename);
    }
  if (unmapped)
    fputs_filtered ("*>", stream);
  else
    fputs_filtered (">", stream);

  do_cleanups (cleanup_chain);
}
