
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 scalar_t__ CLASSTYPE_TEMPLATE_INFO (scalar_t__) ;
 scalar_t__ CLASSTYPE_TI_TEMPLATE (scalar_t__) ;
 scalar_t__ DECL_CLASS_SCOPE_P (scalar_t__) ;
 scalar_t__ DECL_CONTEXT (scalar_t__) ;
 scalar_t__ DECL_NAME (scalar_t__) ;
 scalar_t__ DECL_NONSTATIC_MEMBER_FUNCTION_P (scalar_t__) ;
 scalar_t__ DECL_TEMPLATE_INFO (scalar_t__) ;
 int DECL_TEMPLATE_PARMS (scalar_t__) ;
 scalar_t__ DECL_TI_TEMPLATE (scalar_t__) ;
 int DECL_USE_TEMPLATE (scalar_t__) ;
 scalar_t__ FUNCTION_DECL ;
 scalar_t__ NULL_TREE ;
 scalar_t__ PRIMARY_TEMPLATE_P (scalar_t__) ;
 scalar_t__ TEMPLATE_DECL ;
 scalar_t__ TREE_CHAIN (scalar_t__) ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 scalar_t__ TREE_TYPE (scalar_t__) ;
 scalar_t__ TYPE_ARG_TYPES (scalar_t__) ;
 scalar_t__ TYPE_CONTEXT (scalar_t__) ;
 scalar_t__ TYPE_DECL ;
 scalar_t__ TYPE_NAME (scalar_t__) ;
 scalar_t__ TYPE_TI_ARGS (scalar_t__) ;
 scalar_t__ add_to_template_args (scalar_t__,scalar_t__) ;
 int comp_template_parms (int ,scalar_t__) ;
 int compparms (scalar_t__,scalar_t__) ;
 scalar_t__ error_mark_node ;
 int gcc_assert (int) ;
 scalar_t__ is_specialization_of (scalar_t__,scalar_t__) ;
 int same_type_p (scalar_t__,scalar_t__) ;
 int template_class_depth (scalar_t__) ;
 int tf_none ;
 scalar_t__ tsubst_function_type (scalar_t__,scalar_t__,int ,scalar_t__) ;
 scalar_t__ tsubst_template_parms (int ,scalar_t__,int ) ;

bool
is_specialization_of_friend (tree decl, tree friend)
{
  bool need_template = 1;
  int template_depth;

  gcc_assert (TREE_CODE (decl) == FUNCTION_DECL
       || TREE_CODE (decl) == TYPE_DECL);




  if (TREE_CODE (friend) == FUNCTION_DECL
      && DECL_TEMPLATE_INFO (friend)
      && !DECL_USE_TEMPLATE (friend))
    {

      friend = DECL_TI_TEMPLATE (friend);
      need_template = 0;
    }
  else if (TREE_CODE (friend) == TEMPLATE_DECL
    && !PRIMARY_TEMPLATE_P (friend))
    need_template = 0;


  if (TREE_CODE (friend) != TEMPLATE_DECL)
    return 0;

  if (is_specialization_of (decl, friend))
    return 1;
  template_depth = template_class_depth (DECL_CONTEXT (friend));
  if (template_depth
      && DECL_CLASS_SCOPE_P (decl)
      && is_specialization_of (TYPE_NAME (DECL_CONTEXT (decl)),
          CLASSTYPE_TI_TEMPLATE (DECL_CONTEXT (friend))))
    {
      tree context = DECL_CONTEXT (decl);
      tree args = NULL_TREE;
      int current_depth = 0;

      while (current_depth < template_depth)
 {
   if (CLASSTYPE_TEMPLATE_INFO (context))
     {
       if (current_depth == 0)
  args = TYPE_TI_ARGS (context);
       else
  args = add_to_template_args (TYPE_TI_ARGS (context), args);
       current_depth++;
     }
   context = TYPE_CONTEXT (context);
 }

      if (TREE_CODE (decl) == FUNCTION_DECL)
 {
   bool is_template;
   tree friend_type;
   tree decl_type;
   tree friend_args_type;
   tree decl_args_type;



   is_template = DECL_TEMPLATE_INFO (decl)
   && PRIMARY_TEMPLATE_P (DECL_TI_TEMPLATE (decl));
   if (need_template ^ is_template)
     return 0;
   else if (is_template)
     {

       tree friend_parms
  = tsubst_template_parms (DECL_TEMPLATE_PARMS (friend),
      args, tf_none);
       if (!comp_template_parms
       (DECL_TEMPLATE_PARMS (DECL_TI_TEMPLATE (decl)),
        friend_parms))
  return 0;

       decl_type = TREE_TYPE (DECL_TI_TEMPLATE (decl));
     }
   else
     decl_type = TREE_TYPE (decl);

   friend_type = tsubst_function_type (TREE_TYPE (friend), args,
           tf_none, NULL_TREE);
   if (friend_type == error_mark_node)
     return 0;


   if (!same_type_p (TREE_TYPE (decl_type), TREE_TYPE (friend_type)))
     return 0;



   friend_args_type = TYPE_ARG_TYPES (friend_type);
   decl_args_type = TYPE_ARG_TYPES (decl_type);
   if (DECL_NONSTATIC_MEMBER_FUNCTION_P (friend))
     friend_args_type = TREE_CHAIN (friend_args_type);
   if (DECL_NONSTATIC_MEMBER_FUNCTION_P (decl))
     decl_args_type = TREE_CHAIN (decl_args_type);

   return compparms (decl_args_type, friend_args_type);
 }
      else
 {

   bool is_template;
   tree decl_type = TREE_TYPE (decl);



   is_template
     = CLASSTYPE_TEMPLATE_INFO (decl_type)
       && PRIMARY_TEMPLATE_P (CLASSTYPE_TI_TEMPLATE (decl_type));

   if (need_template ^ is_template)
     return 0;
   else if (is_template)
     {
       tree friend_parms;


       if (DECL_NAME (CLASSTYPE_TI_TEMPLATE (decl_type))
    != DECL_NAME (friend))
  return 0;


       friend_parms
  = tsubst_template_parms (DECL_TEMPLATE_PARMS (friend),
      args, tf_none);
       return comp_template_parms
  (DECL_TEMPLATE_PARMS (CLASSTYPE_TI_TEMPLATE (decl_type)),
   friend_parms);
     }
   else
     return (DECL_NAME (decl)
      == DECL_NAME (friend));
 }
    }
  return 0;
}
