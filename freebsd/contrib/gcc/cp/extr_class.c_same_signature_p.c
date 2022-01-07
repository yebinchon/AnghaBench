
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 scalar_t__ DECL_CONV_FN_P (int ) ;
 int DECL_CONV_FN_TYPE (int ) ;
 scalar_t__ DECL_DESTRUCTOR_P (int ) ;
 scalar_t__ DECL_NAME (int ) ;
 int TREE_CHAIN (int ) ;
 int TREE_TYPE (int ) ;
 int TREE_VALUE (int ) ;
 int TYPE_ARG_TYPES (int ) ;
 scalar_t__ TYPE_QUALS (int ) ;
 scalar_t__ compparms (int ,int ) ;
 scalar_t__ same_type_p (int ,int ) ;
 scalar_t__ special_function_p (int ) ;

int
same_signature_p (tree fndecl, tree base_fndecl)
{


  if (DECL_DESTRUCTOR_P (base_fndecl) && DECL_DESTRUCTOR_P (fndecl)
      && special_function_p (base_fndecl) == special_function_p (fndecl))
    return 1;




  if (DECL_DESTRUCTOR_P (base_fndecl) || DECL_DESTRUCTOR_P (fndecl))
    return 0;

  if (DECL_NAME (fndecl) == DECL_NAME (base_fndecl)
      || (DECL_CONV_FN_P (fndecl)
   && DECL_CONV_FN_P (base_fndecl)
   && same_type_p (DECL_CONV_FN_TYPE (fndecl),
     DECL_CONV_FN_TYPE (base_fndecl))))
    {
      tree types, base_types;
      types = TYPE_ARG_TYPES (TREE_TYPE (fndecl));
      base_types = TYPE_ARG_TYPES (TREE_TYPE (base_fndecl));
      if ((TYPE_QUALS (TREE_TYPE (TREE_VALUE (base_types)))
    == TYPE_QUALS (TREE_TYPE (TREE_VALUE (types))))
   && compparms (TREE_CHAIN (base_types), TREE_CHAIN (types)))
 return 1;
    }
  return 0;
}
