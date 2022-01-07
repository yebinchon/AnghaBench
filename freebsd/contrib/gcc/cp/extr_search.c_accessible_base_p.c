
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 scalar_t__ ANON_AGGR_TYPE_P (int ) ;
 int DECL_SELF_REFERENCE_P (int ) ;
 int TREE_CHAIN (int ) ;
 int TYPE_CONTEXT (int ) ;
 int TYPE_FIELDS (int ) ;
 int accessible_p (int ,int ,int) ;
 scalar_t__ same_type_p (int ,int ) ;

bool
accessible_base_p (tree t, tree base, bool consider_local_p)
{
  tree decl;
  if (same_type_p (t, base))
    return 1;


  decl = TYPE_FIELDS (base);
  while (!DECL_SELF_REFERENCE_P (decl))
    decl = TREE_CHAIN (decl);
  while (ANON_AGGR_TYPE_P (t))
    t = TYPE_CONTEXT (t);
  return accessible_p (t, decl, consider_local_p);
}
