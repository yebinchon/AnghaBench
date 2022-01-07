
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ tree ;
typedef int splay_tree_value ;
typedef TYPE_1__* splay_tree_node ;
typedef int splay_tree_key ;
typedef int splay_tree ;
struct TYPE_3__ {scalar_t__ value; } ;


 scalar_t__ copy_node (scalar_t__) ;
 int splay_tree_insert (int ,int ,int ) ;
 TYPE_1__* splay_tree_lookup (int ,int ) ;

__attribute__((used)) static void
remap_save_expr (tree *tp, void *st_, int *walk_subtrees)
{
  splay_tree st = (splay_tree) st_;
  splay_tree_node n;
  tree t;


  n = splay_tree_lookup (st, (splay_tree_key) *tp);


  if (!n)
    {
      t = copy_node (*tp);


      splay_tree_insert (st, (splay_tree_key) *tp, (splay_tree_value) t);

      splay_tree_insert (st, (splay_tree_key) t, (splay_tree_value) t);
    }
  else
    {

      *walk_subtrees = 0;
      t = (tree) n->value;
    }


  *tp = t;
}
