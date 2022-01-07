
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef char* tree ;
struct TYPE_2__ {char* (* merge_type_attributes ) (char*,char*) ;} ;


 scalar_t__ CLASS_TYPE_P (char*) ;
 scalar_t__ DERIVED_FROM_P (char*,char*) ;
 int NULL_TREE ;
 scalar_t__ POINTER_TYPE ;
 scalar_t__ TREE_CODE (char*) ;
 char* TREE_TYPE (char*) ;
 scalar_t__ TYPE_PTRFN_P (char*) ;
 char* TYPE_PTRMEM_CLASS_TYPE (char*) ;
 int TYPE_PTRMEM_POINTED_TO_TYPE (char*) ;
 scalar_t__ TYPE_PTR_TO_MEMBER_P (char*) ;
 int TYPE_QUALS (char*) ;
 scalar_t__ VOID_TYPE_P (char*) ;
 char* build_pointer_type (char*) ;
 char* build_ptrmem_type (char*,int ) ;
 char* build_type_attribute_variant (char*,char*) ;
 scalar_t__ c_dialect_objc () ;
 char* composite_pointer_type_r (char*,char*,char const*) ;
 char* cp_build_qualified_type (char*,int) ;
 int cp_type_quals (char*) ;
 int error (char*,char const*,char*,char*) ;
 char* error_mark_node ;
 scalar_t__ null_ptr_cst_p (char*) ;
 char* objc_common_type (char*,char*) ;
 scalar_t__ objc_have_common_type (char*,char*,int,int ,char const*) ;
 scalar_t__ pedantic ;
 int pedwarn (char*,char const*) ;
 int same_type_ignoring_top_level_qualifiers_p (char*,char*) ;
 int same_type_p (char*,char*) ;
 char* stub1 (char*,char*) ;
 TYPE_1__ targetm ;
 char* void_type_node ;

tree
composite_pointer_type (tree t1, tree t2, tree arg1, tree arg2,
   const char* location)
{
  tree class1;
  tree class2;





  if (null_ptr_cst_p (arg1))
    return t2;
  if (null_ptr_cst_p (arg2))
    return t1;
  if (TREE_CODE (t2) == POINTER_TYPE && VOID_TYPE_P (TREE_TYPE (t2)))
    {
      tree t;
      t = t1;
      t1 = t2;
      t2 = t;
    }


  if (TREE_CODE (t1) == POINTER_TYPE && VOID_TYPE_P (TREE_TYPE (t1)))
    {
      tree attributes;
      tree result_type;

      if (pedantic && TYPE_PTRFN_P (t2))
 pedwarn ("ISO C++ forbids %s between pointer of type %<void *%> "
   "and pointer-to-function", location);
      result_type
 = cp_build_qualified_type (void_type_node,
       (cp_type_quals (TREE_TYPE (t1))
        | cp_type_quals (TREE_TYPE (t2))));
      result_type = build_pointer_type (result_type);

      attributes = (*targetm.merge_type_attributes) (t1, t2);
      return build_type_attribute_variant (result_type, attributes);
    }

  if (c_dialect_objc () && TREE_CODE (t1) == POINTER_TYPE
      && TREE_CODE (t2) == POINTER_TYPE)
    {

      if (objc_have_common_type (t1, t2, -3, NULL_TREE, location))

 return objc_common_type (t1, t2);
    }



  if (TREE_CODE (t1) == POINTER_TYPE && TREE_CODE (t2) == POINTER_TYPE
      && CLASS_TYPE_P (TREE_TYPE (t1))
      && CLASS_TYPE_P (TREE_TYPE (t2))
      && !same_type_ignoring_top_level_qualifiers_p (TREE_TYPE (t1),
           TREE_TYPE (t2)))
    {
      class1 = TREE_TYPE (t1);
      class2 = TREE_TYPE (t2);

      if (DERIVED_FROM_P (class1, class2))
 t2 = (build_pointer_type
       (cp_build_qualified_type (class1, TYPE_QUALS (class2))));
      else if (DERIVED_FROM_P (class2, class1))
 t1 = (build_pointer_type
       (cp_build_qualified_type (class2, TYPE_QUALS (class1))));
      else
 {
   error ("%s between distinct pointer types %qT and %qT "
   "lacks a cast", location, t1, t2);
   return error_mark_node;
 }
    }


  else if (TYPE_PTR_TO_MEMBER_P (t1)
    && !same_type_p (TYPE_PTRMEM_CLASS_TYPE (t1),
       TYPE_PTRMEM_CLASS_TYPE (t2)))
    {
      class1 = TYPE_PTRMEM_CLASS_TYPE (t1);
      class2 = TYPE_PTRMEM_CLASS_TYPE (t2);

      if (DERIVED_FROM_P (class1, class2))
 t1 = build_ptrmem_type (class2, TYPE_PTRMEM_POINTED_TO_TYPE (t1));
      else if (DERIVED_FROM_P (class2, class1))
 t2 = build_ptrmem_type (class1, TYPE_PTRMEM_POINTED_TO_TYPE (t2));
      else
 {
   error ("%s between distinct pointer-to-member types %qT and %qT "
   "lacks a cast", location, t1, t2);
   return error_mark_node;
 }
    }

  else if (TREE_CODE (t1) != TREE_CODE (t2))
    {
      error ("%s between distinct pointer types %qT and %qT "
      "lacks a cast", location, t1, t2);
      return error_mark_node;
    }


  return composite_pointer_type_r (t1, t2, location);
}
