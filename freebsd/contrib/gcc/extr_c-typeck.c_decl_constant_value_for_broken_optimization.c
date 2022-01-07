
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 scalar_t__ BLKmode ;
 scalar_t__ DECL_MODE (scalar_t__) ;
 scalar_t__ TREE_STATIC (scalar_t__) ;
 scalar_t__ decl_constant_value (scalar_t__) ;
 scalar_t__ pedantic ;
 scalar_t__ unshare_expr (scalar_t__) ;

__attribute__((used)) static tree
decl_constant_value_for_broken_optimization (tree decl)
{
  tree ret;

  if (pedantic || DECL_MODE (decl) == BLKmode)
    return decl;

  ret = decl_constant_value (decl);



  if (ret != decl && TREE_STATIC (decl))
    ret = unshare_expr (ret);
  return ret;
}
