
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree_stmt_iterator ;
typedef int tree ;
struct walk_stmt_info {int tsi; struct nesting_info* info; } ;
struct var_map_elt {int new; int old; } ;
struct nesting_info {int var_map; } ;


 scalar_t__ GOTO_EXPR ;
 scalar_t__ LABEL_EXPR ;
 int LABEL_EXPR_LABEL (int ) ;
 int NULL_TREE ;
 scalar_t__ TREE_CODE (int ) ;
 int TSI_SAME_STMT ;
 scalar_t__ block_may_fallthru (int ) ;
 int build1 (scalar_t__,int ,int ) ;
 scalar_t__ htab_find (int ,struct var_map_elt*) ;
 scalar_t__ tsi_end_p (int ) ;
 int tsi_link_before (int *,int ,int ) ;
 int tsi_prev (int *) ;
 int tsi_stmt (int ) ;
 int void_type_node ;

__attribute__((used)) static tree
convert_nl_goto_receiver (tree *tp, int *walk_subtrees, void *data)
{
  struct walk_stmt_info *wi = (struct walk_stmt_info *) data;
  struct nesting_info *info = wi->info;
  tree t = *tp, label, new_label, x;
  struct var_map_elt *elt, dummy;
  tree_stmt_iterator tmp_tsi;

  *walk_subtrees = 0;
  if (TREE_CODE (t) != LABEL_EXPR)
    return NULL_TREE;
  label = LABEL_EXPR_LABEL (t);

  dummy.old = label;
  elt = (struct var_map_elt *) htab_find (info->var_map, &dummy);
  if (!elt)
    return NULL_TREE;
  new_label = elt->new;



  tmp_tsi = wi->tsi;
  tsi_prev (&tmp_tsi);
  if (tsi_end_p (tmp_tsi) || block_may_fallthru (tsi_stmt (tmp_tsi)))
    {
      x = build1 (GOTO_EXPR, void_type_node, label);
      tsi_link_before (&wi->tsi, x, TSI_SAME_STMT);
    }
  x = build1 (LABEL_EXPR, void_type_node, new_label);
  tsi_link_before (&wi->tsi, x, TSI_SAME_STMT);

  return NULL_TREE;
}
