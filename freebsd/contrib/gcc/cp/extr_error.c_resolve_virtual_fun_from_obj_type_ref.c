
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef scalar_t__ HOST_WIDE_INT ;


 int BINFO_VIRTUALS (int ) ;
 int BV_FN (int ) ;
 int OBJ_TYPE_REF_OBJECT (int ) ;
 int OBJ_TYPE_REF_TOKEN (int ) ;
 int TARGET_VTABLE_USES_DESCRIPTORS ;
 int TREE_CHAIN (int ) ;
 int TREE_TYPE (int ) ;
 int TYPE_BINFO (int ) ;
 scalar_t__ tree_low_cst (int ,int) ;

__attribute__((used)) static tree
resolve_virtual_fun_from_obj_type_ref (tree ref)
{
  tree obj_type = TREE_TYPE (OBJ_TYPE_REF_OBJECT (ref));
  HOST_WIDE_INT index = tree_low_cst (OBJ_TYPE_REF_TOKEN (ref), 1);
  tree fun = BINFO_VIRTUALS (TYPE_BINFO (TREE_TYPE (obj_type)));
  while (index)
    {
      fun = TREE_CHAIN (fun);
      index -= (TARGET_VTABLE_USES_DESCRIPTORS
  ? TARGET_VTABLE_USES_DESCRIPTORS : 1);
    }

  return BV_FN (fun);
}
