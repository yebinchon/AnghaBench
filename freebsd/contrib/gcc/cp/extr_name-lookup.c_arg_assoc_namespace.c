
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;
struct arg_lookup {scalar_t__ args; int name; int namespaces; } ;


 scalar_t__ DECL_NAMESPACE_ASSOCIATIONS (scalar_t__) ;
 int NULL_TREE ;
 int OVL_CURRENT (scalar_t__) ;
 scalar_t__ OVL_NEXT (scalar_t__) ;
 scalar_t__ TREE_CHAIN (scalar_t__) ;
 scalar_t__ TREE_PURPOSE (scalar_t__) ;
 int TREE_VALUE (scalar_t__) ;
 scalar_t__ add_function (struct arg_lookup*,int ) ;
 scalar_t__ friend_of_associated_class_p (int ,int ) ;
 scalar_t__ hidden_name_p (int ) ;
 scalar_t__ namespace_binding (int ,scalar_t__) ;
 scalar_t__ purpose_member (scalar_t__,int ) ;
 int tree_cons (scalar_t__,int ,int ) ;

__attribute__((used)) static bool
arg_assoc_namespace (struct arg_lookup *k, tree scope)
{
  tree value;

  if (purpose_member (scope, k->namespaces))
    return 0;
  k->namespaces = tree_cons (scope, NULL_TREE, k->namespaces);


  for (value = DECL_NAMESPACE_ASSOCIATIONS (scope); value;
       value = TREE_CHAIN (value))
    if (arg_assoc_namespace (k, TREE_PURPOSE (value)))
      return 1;

  value = namespace_binding (k->name, scope);
  if (!value)
    return 0;

  for (; value; value = OVL_NEXT (value))
    {



      if (hidden_name_p (OVL_CURRENT (value)))
 {
   tree args;

   for (args = k->args; args; args = TREE_CHAIN (args))
     if (friend_of_associated_class_p (TREE_VALUE (args),
           OVL_CURRENT (value)))
       break;
   if (!args)
     continue;
 }

      if (add_function (k, OVL_CURRENT (value)))
 return 1;
    }

  return 0;
}
