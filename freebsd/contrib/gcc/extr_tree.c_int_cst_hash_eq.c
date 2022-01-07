
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 scalar_t__ TREE_INT_CST_HIGH (int ) ;
 scalar_t__ TREE_INT_CST_LOW (int ) ;
 scalar_t__ TREE_TYPE (int ) ;

__attribute__((used)) static int
int_cst_hash_eq (const void *x, const void *y)
{
  tree xt = (tree) x;
  tree yt = (tree) y;

  return (TREE_TYPE (xt) == TREE_TYPE (yt)
   && TREE_INT_CST_HIGH (xt) == TREE_INT_CST_HIGH (yt)
   && TREE_INT_CST_LOW (xt) == TREE_INT_CST_LOW (yt));
}
