
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;
typedef int splay_tree_value ;
typedef int splay_tree_key ;
typedef int splay_tree ;


 scalar_t__ AGGR_INIT_EXPR ;
 scalar_t__ NULL_TREE ;
 scalar_t__ TARGET_EXPR ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 scalar_t__ TREE_CONSTANT (scalar_t__) ;
 scalar_t__ TREE_OPERAND (scalar_t__,int) ;
 int TREE_TYPE (scalar_t__) ;
 int TYPE_P (scalar_t__) ;
 int break_out_target_exprs (scalar_t__) ;
 scalar_t__ build_cplus_new (int ,int ) ;
 scalar_t__ build_target_expr_with_type (int ,int ) ;
 scalar_t__ copy_tree_r (scalar_t__*,int*,int *) ;
 int splay_tree_insert (int ,int ,int ) ;

__attribute__((used)) static tree
bot_manip (tree* tp, int* walk_subtrees, void* data)
{
  splay_tree target_remap = ((splay_tree) data);
  tree t = *tp;

  if (!TYPE_P (t) && TREE_CONSTANT (t))
    {



      *walk_subtrees = 0;
      return NULL_TREE;
    }
  if (TREE_CODE (t) == TARGET_EXPR)
    {
      tree u;

      if (TREE_CODE (TREE_OPERAND (t, 1)) == AGGR_INIT_EXPR)
 u = build_cplus_new
   (TREE_TYPE (t), break_out_target_exprs (TREE_OPERAND (t, 1)));
      else
 u = build_target_expr_with_type
   (break_out_target_exprs (TREE_OPERAND (t, 1)), TREE_TYPE (t));


      splay_tree_insert (target_remap,
    (splay_tree_key) TREE_OPERAND (t, 0),
    (splay_tree_value) TREE_OPERAND (u, 0));


      *tp = u;



      *walk_subtrees = 0;
      return NULL_TREE;
    }


  return copy_tree_r (tp, walk_subtrees, ((void*)0));
}
