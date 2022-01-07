
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ tree ;
typedef TYPE_1__* splay_tree_node ;
typedef int splay_tree_key ;
typedef int splay_tree ;
struct TYPE_6__ {int decl_map; } ;
typedef TYPE_2__ copy_body_data ;
struct TYPE_5__ {scalar_t__ value; } ;


 scalar_t__ BIND_EXPR ;
 scalar_t__ LABEL_DECL ;
 scalar_t__ NULL_TREE ;
 scalar_t__ SAVE_EXPR ;
 scalar_t__ STATEMENT_LIST ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 int TREE_STATIC (scalar_t__) ;
 scalar_t__ VAR_DECL ;
 int copy_bind_expr (scalar_t__*,int*,TYPE_2__*) ;
 int copy_statement_list (scalar_t__*) ;
 int copy_tree_r (scalar_t__*,int*,int *) ;
 int remap_save_expr (scalar_t__*,int ,int*) ;
 TYPE_1__* splay_tree_lookup (int ,int ) ;
 int unsave_expr_1 (scalar_t__) ;

__attribute__((used)) static tree
unsave_r (tree *tp, int *walk_subtrees, void *data)
{
  copy_body_data *id = (copy_body_data *) data;
  splay_tree st = id->decl_map;
  splay_tree_node n;


  if ((TREE_CODE (*tp) == VAR_DECL && !TREE_STATIC (*tp))
      || TREE_CODE (*tp) == LABEL_DECL)
    {

      n = splay_tree_lookup (st, (splay_tree_key) *tp);


      if (n)
 *tp = (tree) n->value;
    }

  else if (TREE_CODE (*tp) == STATEMENT_LIST)
    copy_statement_list (tp);
  else if (TREE_CODE (*tp) == BIND_EXPR)
    copy_bind_expr (tp, walk_subtrees, id);
  else if (TREE_CODE (*tp) == SAVE_EXPR)
    remap_save_expr (tp, st, walk_subtrees);
  else
    {
      copy_tree_r (tp, walk_subtrees, ((void*)0));


      unsave_expr_1 (*tp);
    }


  return NULL_TREE;
}
