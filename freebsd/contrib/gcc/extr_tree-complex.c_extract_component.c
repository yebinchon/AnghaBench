
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef int block_stmt_iterator ;






 int IMAGPART_EXPR ;


 int REALPART_EXPR ;


 int TREE_CODE (int ) ;
 int TREE_IMAGPART (int ) ;
 int TREE_OPERAND (int ,int) ;
 int TREE_REALPART (int ) ;
 int TREE_TYPE (int ) ;

 int build1 (int ,int ,int ) ;
 int gcc_unreachable () ;
 int get_component_ssa_name (int ,int) ;
 int gimplify_val (int *,int ,int ) ;
 int unshare_expr (int ) ;

__attribute__((used)) static tree
extract_component (block_stmt_iterator *bsi, tree t, bool imagpart_p,
     bool gimple_p)
{
  switch (TREE_CODE (t))
    {
    case 135:
      return imagpart_p ? TREE_IMAGPART (t) : TREE_REALPART (t);

    case 134:
      return TREE_OPERAND (t, imagpart_p);

    case 128:
    case 130:
    case 131:
    case 132:
    case 133:
    case 136:
      {
 tree inner_type = TREE_TYPE (TREE_TYPE (t));

 t = build1 ((imagpart_p ? IMAGPART_EXPR : REALPART_EXPR),
      inner_type, unshare_expr (t));

 if (gimple_p)
   t = gimplify_val (bsi, inner_type, t);

 return t;
      }

    case 129:
      return get_component_ssa_name (t, imagpart_p);

    default:
      gcc_unreachable ();
    }
}
