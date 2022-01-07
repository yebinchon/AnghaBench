
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 scalar_t__ DECL_CONTEXT (scalar_t__) ;
 scalar_t__ DECL_FRIEND_CONTEXT (scalar_t__) ;
 scalar_t__ DECL_FUNCTION_MEMBER_P (scalar_t__) ;
 scalar_t__ current_class_type ;
 scalar_t__ current_function_decl ;
 scalar_t__ current_namespace ;
 scalar_t__ same_type_p (scalar_t__,scalar_t__) ;

tree
current_scope (void)
{
  if (current_function_decl && current_class_type
      && ((DECL_FUNCTION_MEMBER_P (current_function_decl)
    && same_type_p (DECL_CONTEXT (current_function_decl),
      current_class_type))
   || (DECL_FRIEND_CONTEXT (current_function_decl)
       && same_type_p (DECL_FRIEND_CONTEXT (current_function_decl),
         current_class_type))))
    return current_function_decl;
  if (current_class_type)
    return current_class_type;
  if (current_function_decl)
    return current_function_decl;
  return current_namespace;
}
