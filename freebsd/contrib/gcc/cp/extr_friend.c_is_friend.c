
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 scalar_t__ CLASSTYPE_FRIEND_CLASSES (int ) ;
 scalar_t__ DECL_CONTEXT (scalar_t__) ;
 scalar_t__ DECL_FRIENDLIST (scalar_t__) ;
 scalar_t__ DECL_FUNCTION_MEMBER_P (scalar_t__) ;
 scalar_t__ DECL_NAME (scalar_t__) ;
 int DECL_P (scalar_t__) ;
 scalar_t__ FRIEND_DECLS (scalar_t__) ;
 scalar_t__ FRIEND_NAME (scalar_t__) ;
 scalar_t__ NAMESPACE_DECL ;
 scalar_t__ NULL_TREE ;
 scalar_t__ TEMPLATE_DECL ;
 scalar_t__ TREE_CHAIN (scalar_t__) ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 int TREE_TYPE (scalar_t__) ;
 scalar_t__ TREE_VALUE (scalar_t__) ;
 scalar_t__ TYPE_CLASS_SCOPE_P (scalar_t__) ;
 scalar_t__ TYPE_CONTEXT (scalar_t__) ;
 scalar_t__ TYPE_MAIN_DECL (scalar_t__) ;
 scalar_t__ decl_function_context (scalar_t__) ;
 scalar_t__ is_specialization_of_friend (scalar_t__,scalar_t__) ;
 scalar_t__ same_type_p (scalar_t__,scalar_t__) ;

int
is_friend (tree type, tree supplicant)
{
  int declp;
  tree list;
  tree context;

  if (supplicant == NULL_TREE || type == NULL_TREE)
    return 0;

  declp = DECL_P (supplicant);

  if (declp)

    {
      tree list = DECL_FRIENDLIST (TYPE_MAIN_DECL (type));
      tree name = DECL_NAME (supplicant);

      for (; list ; list = TREE_CHAIN (list))
 {
   if (name == FRIEND_NAME (list))
     {
       tree friends = FRIEND_DECLS (list);
       for (; friends ; friends = TREE_CHAIN (friends))
  {
    tree friend = TREE_VALUE (friends);

    if (friend == NULL_TREE)
      continue;

    if (supplicant == friend)
      return 1;

    if (is_specialization_of_friend (supplicant, friend))
      return 1;
  }
       break;
     }
 }
    }
  else

    {
      if (same_type_p (supplicant, type))
 return 1;

      list = CLASSTYPE_FRIEND_CLASSES (TREE_TYPE (TYPE_MAIN_DECL (type)));
      for (; list ; list = TREE_CHAIN (list))
 {
   tree t = TREE_VALUE (list);

   if (TREE_CODE (t) == TEMPLATE_DECL ?
       is_specialization_of_friend (TYPE_MAIN_DECL (supplicant), t) :
       same_type_p (supplicant, t))
     return 1;
 }
    }

  if (declp)
    {
      if (DECL_FUNCTION_MEMBER_P (supplicant))
 context = DECL_CONTEXT (supplicant);
      else
 context = NULL_TREE;
    }
  else
    {
      if (TYPE_CLASS_SCOPE_P (supplicant))


 context = TYPE_CONTEXT (supplicant);
      else

 context = decl_function_context (TYPE_MAIN_DECL (supplicant));
    }


  if (context && TREE_CODE (context) == NAMESPACE_DECL)
    context = NULL_TREE;

  if (context)
    return is_friend (type, context);

  return 0;
}
