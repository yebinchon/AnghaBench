
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct macro_source_file {int included_at_line; struct macro_source_file* next_included; struct macro_source_file* included_by; int table; int filename; struct macro_source_file* includes; } ;


 int complaint (int *,char*,char const*,int ,int ,int) ;
 struct macro_source_file* new_source_file (int ,char const*) ;
 int symfile_complaints ;

struct macro_source_file *
macro_include (struct macro_source_file *source,
               int line,
               const char *included)
{
  struct macro_source_file *new;
  struct macro_source_file **link;




  for (link = &source->includes;
       *link && (*link)->included_at_line < line;
       link = &(*link)->next_included)
    ;



  if (*link && line == (*link)->included_at_line)
    {







      complaint (&symfile_complaints,
   "both `%s' and `%s' allegedly #included at %s:%d", included,
   (*link)->filename, source->filename, line);



      while (*link && line == (*link)->included_at_line)
        {

          line++;
          link = &(*link)->next_included;
        }
    }




  new = new_source_file (source->table, included);
  new->included_by = source;
  new->included_at_line = line;
  new->next_included = *link;
  *link = new;

  return new;
}
