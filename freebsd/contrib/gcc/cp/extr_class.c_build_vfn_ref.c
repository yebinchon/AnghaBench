
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int ADDR_EXPR ;
 int NOP_EXPR ;
 int OBJ_TYPE_REF ;
 scalar_t__ TARGET_VTABLE_USES_DESCRIPTORS ;
 int TREE_TYPE (int ) ;
 int build1 (int ,int ,int ) ;
 int build3 (int ,int ,int ,int ,int ) ;
 int build_indirect_ref (int ,int ) ;
 int build_unary_op (int ,int ,int) ;
 int build_vtbl_ref_1 (int ,int ) ;

tree
build_vfn_ref (tree instance_ptr, tree idx)
{
  tree aref;

  aref = build_vtbl_ref_1 (build_indirect_ref (instance_ptr, 0), idx);



  if (TARGET_VTABLE_USES_DESCRIPTORS)
    aref = build1 (NOP_EXPR, TREE_TYPE (aref),
     build_unary_op (ADDR_EXPR, aref, 1));


  aref = build3 (OBJ_TYPE_REF, TREE_TYPE (aref), aref, instance_ptr, idx);

  return aref;
}
