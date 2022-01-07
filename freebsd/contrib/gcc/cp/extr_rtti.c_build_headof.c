
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int NULL_TREE ;
 int PLUS_EXPR ;
 scalar_t__ POINTER_TYPE ;
 int TARGET_VTABLE_DATA_ENTRY_DISTANCE ;
 scalar_t__ TREE_CODE (int ) ;
 int TREE_TYPE (int ) ;
 int TYPE_POLYMORPHIC_P (int ) ;
 int build2 (int ,int ,int ,int ) ;
 int build_indirect_ref (int ,int *) ;
 int build_int_cst (int ,int) ;
 int build_qualified_type (int ,int ) ;
 int build_vtbl_ref (int ,int ) ;
 int convert_to_integer (int ,int ) ;
 int cp_type_quals (int ) ;
 int gcc_assert (int) ;
 int ptr_type_node ;
 int ptrdiff_type_node ;
 int save_expr (int ) ;

__attribute__((used)) static tree
build_headof (tree exp)
{
  tree type = TREE_TYPE (exp);
  tree offset;
  tree index;

  gcc_assert (TREE_CODE (type) == POINTER_TYPE);
  type = TREE_TYPE (type);

  if (!TYPE_POLYMORPHIC_P (type))
    return exp;


  exp = save_expr (exp);


  index = build_int_cst (NULL_TREE,
    -2 * TARGET_VTABLE_DATA_ENTRY_DISTANCE);

  offset = build_vtbl_ref (build_indirect_ref (exp, ((void*)0)), index);

  type = build_qualified_type (ptr_type_node,
          cp_type_quals (TREE_TYPE (exp)));
  return build2 (PLUS_EXPR, type, exp,
   convert_to_integer (ptrdiff_type_node, offset));
}
