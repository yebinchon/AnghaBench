
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;
typedef int block_stmt_iterator ;


 int BIT_FIELD_REF ;
 int VIEW_CONVERT_EXPR ;
 scalar_t__ gimplify_build1 (int *,int ,scalar_t__,scalar_t__) ;
 scalar_t__ gimplify_build3 (int *,int ,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;

__attribute__((used)) static inline tree
tree_vec_extract (block_stmt_iterator *bsi, tree type,
    tree t, tree bitsize, tree bitpos)
{
  if (bitpos)
    return gimplify_build3 (bsi, BIT_FIELD_REF, type, t, bitsize, bitpos);
  else
    return gimplify_build1 (bsi, VIEW_CONVERT_EXPR, type, t);
}
