
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct macro_source_file {int filename; } ;
struct macro_key {int end_line; struct macro_source_file* end_file; } ;
typedef TYPE_1__* splay_tree_node ;
struct TYPE_3__ {scalar_t__ key; } ;


 int complaint (int *,char*,char const*,int ,int,...) ;
 TYPE_1__* find_definition (char const*,struct macro_source_file*,int) ;
 int symfile_complaints ;

void
macro_undef (struct macro_source_file *source, int line,
             const char *name)
{
  splay_tree_node n = find_definition (name, source, line);

  if (n)
    {





      struct macro_key *key = (struct macro_key *) n->key;

      if (key->end_file)
        {
   complaint (&symfile_complaints,
       "macro '%s' is #undefined twice, at %s:%d and %s:%d", name,
       source->filename, line, key->end_file->filename,
       key->end_line);
        }



      key->end_file = source;
      key->end_line = line;
    }
  else
    {
    }
}
