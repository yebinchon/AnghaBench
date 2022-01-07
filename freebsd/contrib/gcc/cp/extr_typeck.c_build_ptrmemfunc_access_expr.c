
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int COMPONENT_REF ;
 int NULL_TREE ;
 int TREE_TYPE (int ) ;
 int TYPE_PTRMEMFUNC_P (int ) ;
 int cp_build_qualified_type (int ,int ) ;
 int cp_type_quals (int ) ;
 int fold_build3 (int ,int ,int ,int ,int ) ;
 int gcc_assert (int ) ;
 int lookup_member (int ,int ,int ,int) ;

tree
build_ptrmemfunc_access_expr (tree ptrmem, tree member_name)
{
  tree ptrmem_type;
  tree member;
  tree member_type;





  ptrmem_type = TREE_TYPE (ptrmem);
  gcc_assert (TYPE_PTRMEMFUNC_P (ptrmem_type));
  member = lookup_member (ptrmem_type, member_name, 0,
                   0);
  member_type = cp_build_qualified_type (TREE_TYPE (member),
      cp_type_quals (ptrmem_type));
  return fold_build3 (COMPONENT_REF, member_type,
        ptrmem, member, NULL_TREE);
}
