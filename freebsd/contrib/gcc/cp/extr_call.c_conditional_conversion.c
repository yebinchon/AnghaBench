
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef int conversion ;


 scalar_t__ CLASS_TYPE_P (int ) ;
 int DERIVED_FROM_P (int ,int ) ;
 int LOOKUP_NORMAL ;
 int LOOKUP_NO_TEMP_BIND ;
 int TREE_TYPE (int ) ;
 int TYPE_MAIN_VARIANT (int ) ;
 scalar_t__ at_least_as_qualified_p (int ,int ) ;
 int * build_conv (int ,int ,int *) ;
 int * build_identity_conv (int ,int ) ;
 int build_reference_type (int ) ;
 int ck_base ;
 int ck_rvalue ;
 int * implicit_conversion (int ,int ,int ,int,int ) ;
 int non_reference (int ) ;
 scalar_t__ real_lvalue_p (int ) ;
 int same_type_p (int ,int ) ;

__attribute__((used)) static conversion *
conditional_conversion (tree e1, tree e2)
{
  tree t1 = non_reference (TREE_TYPE (e1));
  tree t2 = non_reference (TREE_TYPE (e2));
  conversion *conv;
  bool good_base;







  if (real_lvalue_p (e2))
    {
      conv = implicit_conversion (build_reference_type (t2),
      t1,
      e1,
                   0,
      LOOKUP_NO_TEMP_BIND);
      if (conv)
 return conv;
    }
  if (CLASS_TYPE_P (t1) && CLASS_TYPE_P (t2)
      && ((good_base = DERIVED_FROM_P (t2, t1)) || DERIVED_FROM_P (t1, t2)))
    {
      if (good_base && at_least_as_qualified_p (t2, t1))
 {
   conv = build_identity_conv (t1, e1);
   if (!same_type_p (TYPE_MAIN_VARIANT (t1),
       TYPE_MAIN_VARIANT (t2)))
     conv = build_conv (ck_base, t2, conv);
   else
     conv = build_conv (ck_rvalue, t2, conv);
   return conv;
 }
      else
 return ((void*)0);
    }
  else





    return implicit_conversion (t2, t1, e1, 0,
    LOOKUP_NORMAL);
}
