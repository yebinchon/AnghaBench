
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct macro_source_file {int dummy; } ;
struct macro_key {int start_line; struct macro_source_file* start_file; } ;
typedef TYPE_1__* splay_tree_node ;
struct TYPE_3__ {scalar_t__ key; } ;


 TYPE_1__* find_definition (char const*,struct macro_source_file*,int) ;

struct macro_source_file *
macro_definition_location (struct macro_source_file *source,
                           int line,
                           const char *name,
                           int *definition_line)
{
  splay_tree_node n = find_definition (name, source, line);

  if (n)
    {
      struct macro_key *key = (struct macro_key *) n->key;
      *definition_line = key->start_line;
      return key->start_file;
    }
  else
    return 0;
}
