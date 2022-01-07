
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct macro_table {int definitions; } ;
struct macro_source_file {struct macro_table* table; } ;
struct macro_key {char const* name; int start_line; int end_line; int * end_file; struct macro_source_file* start_file; } ;
typedef TYPE_1__* splay_tree_node ;
typedef int splay_tree_key ;
struct TYPE_5__ {scalar_t__ key; } ;


 scalar_t__ compare_locations (struct macro_source_file*,int,int *,int ) ;
 TYPE_1__* splay_tree_lookup (int ,int ) ;
 TYPE_1__* splay_tree_predecessor (int ,int ) ;
 scalar_t__ strcmp (char const*,char const*) ;

__attribute__((used)) static splay_tree_node
find_definition (const char *name,
                 struct macro_source_file *file,
                 int line)
{
  struct macro_table *t = file->table;
  splay_tree_node n;


  struct macro_key query;

  query.name = name;
  query.start_file = file;
  query.start_line = line;
  query.end_file = ((void*)0);

  n = splay_tree_lookup (t->definitions, (splay_tree_key) &query);
  if (! n)
    {






      splay_tree_node pred = splay_tree_predecessor (t->definitions,
                                                     (splay_tree_key) &query);

      if (pred)
        {


          struct macro_key *found = (struct macro_key *) pred->key;

          if (strcmp (found->name, name) == 0)
            n = pred;
        }
    }

  if (n)
    {
      struct macro_key *found = (struct macro_key *) n->key;




      if (compare_locations (file, line, found->end_file, found->end_line) < 0)
        return n;
      else
        return 0;
    }
  else
    return 0;
}
