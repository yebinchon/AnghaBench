
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;
struct arg_lookup {scalar_t__ name; int classes; } ;


 scalar_t__ BINFO_BASE_ITERATE (scalar_t__,int,scalar_t__) ;
 scalar_t__ BINFO_TYPE (scalar_t__) ;
 scalar_t__ CLASSTYPE_TEMPLATE_INFO (scalar_t__) ;
 int CLASSTYPE_TI_ARGS (scalar_t__) ;
 int CLASSTYPE_TI_TEMPLATE (scalar_t__) ;
 int CLASS_TYPE_P (scalar_t__) ;
 scalar_t__ CP_DECL_CONTEXT (scalar_t__) ;
 scalar_t__ DECL_FRIENDLIST (int ) ;
 scalar_t__ DECL_USE_TEMPLATE (scalar_t__) ;
 scalar_t__ FRIEND_DECLS (scalar_t__) ;
 scalar_t__ FRIEND_NAME (scalar_t__) ;
 scalar_t__ FUNCTION_DECL ;
 scalar_t__ INNERMOST_TEMPLATE_ARGS (int ) ;
 int NULL_TREE ;
 scalar_t__ PRIMARY_TEMPLATE_P (int ) ;
 scalar_t__ TREE_CHAIN (scalar_t__) ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 scalar_t__ TREE_VALUE (scalar_t__) ;
 int TREE_VEC_ELT (scalar_t__,int) ;
 int TREE_VEC_LENGTH (scalar_t__) ;
 scalar_t__ TYPE_BINFO (scalar_t__) ;
 int TYPE_MAIN_DECL (scalar_t__) ;
 scalar_t__ add_function (struct arg_lookup*,scalar_t__) ;
 scalar_t__ arg_assoc_namespace (struct arg_lookup*,scalar_t__) ;
 int arg_assoc_template_arg (struct arg_lookup*,int ) ;
 scalar_t__ decl_namespace_context (scalar_t__) ;
 scalar_t__ purpose_member (scalar_t__,int ) ;
 int tree_cons (scalar_t__,int ,int ) ;

__attribute__((used)) static bool
arg_assoc_class (struct arg_lookup *k, tree type)
{
  tree list, friends, context;
  int i;



  if (!CLASS_TYPE_P (type))
    return 0;

  if (purpose_member (type, k->classes))
    return 0;
  k->classes = tree_cons (type, NULL_TREE, k->classes);

  context = decl_namespace_context (type);
  if (arg_assoc_namespace (k, context))
    return 1;

  if (TYPE_BINFO (type))
    {

      tree binfo, base_binfo;

      for (binfo = TYPE_BINFO (type), i = 0;
    BINFO_BASE_ITERATE (binfo, i, base_binfo); i++)
 if (arg_assoc_class (k, BINFO_TYPE (base_binfo)))
   return 1;
    }


  for (list = DECL_FRIENDLIST (TYPE_MAIN_DECL (type)); list;
       list = TREE_CHAIN (list))
    if (k->name == FRIEND_NAME (list))
      for (friends = FRIEND_DECLS (list); friends;
    friends = TREE_CHAIN (friends))
 {
   tree fn = TREE_VALUE (friends);



   if (CP_DECL_CONTEXT (fn) != context)
     continue;



   if (TREE_CODE (fn) == FUNCTION_DECL && DECL_USE_TEMPLATE (fn))
     continue;
   if (add_function (k, fn))
     return 1;
 }


  if (CLASSTYPE_TEMPLATE_INFO (type)
      && PRIMARY_TEMPLATE_P (CLASSTYPE_TI_TEMPLATE (type)))
    {
      list = INNERMOST_TEMPLATE_ARGS (CLASSTYPE_TI_ARGS (type));
      for (i = 0; i < TREE_VEC_LENGTH (list); ++i)
 arg_assoc_template_arg (k, TREE_VEC_ELT (list, i));
    }

  return 0;
}
