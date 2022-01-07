
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 scalar_t__ PTRMEM_CST ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 scalar_t__ build_ptrmemfunc_access_expr (scalar_t__,int ) ;
 int expand_ptrmemfunc_cst (scalar_t__,scalar_t__*,scalar_t__*) ;
 int pfn_identifier ;

__attribute__((used)) static tree
pfn_from_ptrmemfunc (tree t)
{
  if (TREE_CODE (t) == PTRMEM_CST)
    {
      tree delta;
      tree pfn;

      expand_ptrmemfunc_cst (t, &delta, &pfn);
      if (pfn)
 return pfn;
    }

  return build_ptrmemfunc_access_expr (t, pfn_identifier);
}
