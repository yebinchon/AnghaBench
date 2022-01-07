
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef scalar_t__ tree ;
typedef TYPE_1__* splay_tree_node ;
typedef int splay_tree_key ;
typedef TYPE_2__* dump_node_info_p ;
typedef TYPE_3__* dump_info_p ;
struct TYPE_11__ {int column; int stream; int nodes; } ;
struct TYPE_10__ {unsigned int index; } ;
struct TYPE_9__ {scalar_t__ value; } ;


 int dump_index (TYPE_3__*,unsigned int) ;
 int dump_maybe_newline (TYPE_3__*) ;
 int fprintf (int ,char*,char const*) ;
 unsigned int queue (TYPE_3__*,scalar_t__,int) ;
 TYPE_1__* splay_tree_lookup (int ,int ) ;

void
queue_and_dump_index (dump_info_p di, const char *field, tree t, int flags)
{
  unsigned int index;
  splay_tree_node n;



  if (!t)
    return;


  n = splay_tree_lookup (di->nodes, (splay_tree_key) t);
  if (n)
    index = ((dump_node_info_p) n->value)->index;
  else

    index = queue (di, t, flags);


  dump_maybe_newline (di);
  fprintf (di->stream, "%-4s: ", field);
  di->column += 6;
  dump_index (di, index);
}
