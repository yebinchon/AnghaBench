
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int tree ;
struct TYPE_3__ {int vtable_method; } ;
struct TYPE_4__ {TYPE_1__ local; } ;
typedef scalar_t__ HOST_WIDE_INT ;


 int BINFO_VIRTUALS (int ) ;
 int BV_FN (int ) ;
 int DECL_VINDEX (int ) ;
 int OBJ_TYPE_REF_TOKEN (int ) ;
 int TARGET_VTABLE_USES_DESCRIPTORS ;
 int TREE_CHAIN (int ) ;
 int TYPE_BINFO (int ) ;
 int build_address (int ) ;
 TYPE_2__* cgraph_node (int ) ;
 int gcc_assert (int ) ;
 int tree_int_cst_equal (int ,int ) ;
 scalar_t__ tree_low_cst (int ,int) ;

tree
cp_fold_obj_type_ref (tree ref, tree known_type)
{
  HOST_WIDE_INT index = tree_low_cst (OBJ_TYPE_REF_TOKEN (ref), 1);
  HOST_WIDE_INT i = 0;
  tree v = BINFO_VIRTUALS (TYPE_BINFO (known_type));
  tree fndecl;

  while (i != index)
    {
      i += (TARGET_VTABLE_USES_DESCRIPTORS
     ? TARGET_VTABLE_USES_DESCRIPTORS : 1);
      v = TREE_CHAIN (v);
    }

  fndecl = BV_FN (v);






  cgraph_node (fndecl)->local.vtable_method = 1;

  return build_address (fndecl);
}
