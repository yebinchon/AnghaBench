
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* tree ;




 int TREE_CODE (void*) ;
 void* TREE_TYPE (void*) ;
 void* TYPE_MAIN_VARIANT (void*) ;
 int TYPE_MODE (void*) ;
 int TYPE_REF_CAN_ALIAS_ALL (void*) ;
 void* build_pointer_type_for_mode (void*,int ,int ) ;
 void* build_reference_type_for_mode (void*,int ,int ) ;

tree
build_type_no_quals (tree t)
{
  switch (TREE_CODE (t))
    {
    case 129:
      return build_pointer_type_for_mode (build_type_no_quals (TREE_TYPE (t)),
       TYPE_MODE (t),
       TYPE_REF_CAN_ALIAS_ALL (t));
    case 128:
      return
 build_reference_type_for_mode (build_type_no_quals (TREE_TYPE (t)),
           TYPE_MODE (t),
           TYPE_REF_CAN_ALIAS_ALL (t));
    default:
      return TYPE_MAIN_VARIANT (t);
    }
}
