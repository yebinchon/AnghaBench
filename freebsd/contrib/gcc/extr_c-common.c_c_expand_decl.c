
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int DECL_ANON_UNION_ELEMS (int ) ;
 int NULL_TREE ;
 scalar_t__ TREE_CODE (int ) ;
 int TREE_STATIC (int ) ;
 int TREE_TYPE (int ) ;
 scalar_t__ VAR_DECL ;
 int anon_aggr_type_p (int ) ;
 int emit_local_var (int ) ;
 int expand_anon_union_decl (int ,int ,int ) ;

int
c_expand_decl (tree decl)
{
  if (TREE_CODE (decl) == VAR_DECL && !TREE_STATIC (decl))
    {

      if (!anon_aggr_type_p (TREE_TYPE (decl)))
 emit_local_var (decl);
      else
 expand_anon_union_decl (decl, NULL_TREE,
    DECL_ANON_UNION_ELEMS (decl));
    }
  else
    return 0;

  return 1;
}
