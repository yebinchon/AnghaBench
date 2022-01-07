
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct symtab_and_line {int line; TYPE_1__* symtab; } ;
struct macro_source_file {int dummy; } ;
struct macro_scope {int line; struct macro_source_file* file; } ;
struct TYPE_2__ {int filename; int macro_table; } ;


 int complaint (int *,char*,int ) ;
 struct macro_source_file* macro_lookup_inclusion (struct macro_source_file*,int ) ;
 struct macro_source_file* macro_main (int ) ;
 int symfile_complaints ;
 scalar_t__ xmalloc (int) ;

struct macro_scope *
sal_macro_scope (struct symtab_and_line sal)
{
  struct macro_source_file *main, *inclusion;
  struct macro_scope *ms;

  if (! sal.symtab
      || ! sal.symtab->macro_table)
    return 0;

  ms = (struct macro_scope *) xmalloc (sizeof (*ms));

  main = macro_main (sal.symtab->macro_table);
  inclusion = macro_lookup_inclusion (main, sal.symtab->filename);

  if (inclusion)
    {
      ms->file = inclusion;
      ms->line = sal.line;
    }
  else
    {
      ms->file = main;
      ms->line = -1;

      complaint (&symfile_complaints,
                 "symtab found for `%s', but that file\n"
                 "is not covered in the compilation unit's macro information",
                 sal.symtab->filename);
    }

  return ms;
}
