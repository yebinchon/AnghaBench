
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int COMPONENT_REF ;
 int DECL_NAME (int ) ;
 int DECL_P (int ) ;
 int NULL_TREE ;
 int TREE_TYPE (int ) ;
 int build3 (int ,int ,int ,int ,int ) ;
 int build_class_member_access_expr (int ,int ,int ,int) ;
 int lookup_member (int ,int ,int ,int ) ;
 scalar_t__ processing_template_decl ;

tree
build_component_ref (tree e, tree member)
{
  if (!DECL_P (member))
    member = lookup_member (TREE_TYPE (e), member, 0, 0);
  if (processing_template_decl)
    return build3 (COMPONENT_REF, TREE_TYPE (member), e, DECL_NAME (member), NULL_TREE);
  return build_class_member_access_expr (e, member,
      NULL_TREE, 0);
}
