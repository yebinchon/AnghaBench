
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dependency {int file; struct dependency* next; } ;
typedef int FILE ;


 int FOPEN_WT ;
 int _ (char*) ;
 int as_warn (int ,int *) ;
 scalar_t__ column ;
 struct dependency* dep_chain ;
 int * dep_file ;
 scalar_t__ fclose (int *) ;
 int * fopen (int *,int ) ;
 int out_file_name ;
 int putc (char,int *) ;
 int wrap_output (int *,int ,char) ;

void
print_dependencies (void)
{
  FILE *f;
  struct dependency *dep;

  if (dep_file == ((void*)0))
    return;

  f = fopen (dep_file, FOPEN_WT);
  if (f == ((void*)0))
    {
      as_warn (_("can't open `%s' for writing"), dep_file);
      return;
    }

  column = 0;
  wrap_output (f, out_file_name, ':');
  for (dep = dep_chain; dep != ((void*)0); dep = dep->next)
    wrap_output (f, dep->file, ' ');

  putc ('\n', f);

  if (fclose (f))
    as_warn (_("can't close `%s'"), dep_file);
}
