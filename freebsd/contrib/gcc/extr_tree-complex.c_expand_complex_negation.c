
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef int block_stmt_iterator ;


 int NEGATE_EXPR ;
 int gimplify_build1 (int *,int ,int ,int ) ;
 int update_complex_assignment (int *,int ,int ) ;

__attribute__((used)) static void
expand_complex_negation (block_stmt_iterator *bsi, tree inner_type,
    tree ar, tree ai)
{
  tree rr, ri;

  rr = gimplify_build1 (bsi, NEGATE_EXPR, inner_type, ar);
  ri = gimplify_build1 (bsi, NEGATE_EXPR, inner_type, ai);

  update_complex_assignment (bsi, rr, ri);
}
