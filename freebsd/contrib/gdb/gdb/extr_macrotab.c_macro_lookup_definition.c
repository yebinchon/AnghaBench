
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct macro_source_file {int dummy; } ;
struct macro_definition {int dummy; } ;
typedef TYPE_1__* splay_tree_node ;
struct TYPE_3__ {scalar_t__ value; } ;


 TYPE_1__* find_definition (char const*,struct macro_source_file*,int) ;

struct macro_definition *
macro_lookup_definition (struct macro_source_file *source,
                         int line, const char *name)
{
  splay_tree_node n = find_definition (name, source, line);

  if (n)
    return (struct macro_definition *) n->value;
  else
    return 0;
}
