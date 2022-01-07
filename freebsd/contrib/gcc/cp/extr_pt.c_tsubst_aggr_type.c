
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tsubst_flags_t ;
typedef scalar_t__ tree ;



 scalar_t__ NULL_TREE ;

 int TREE_CODE (scalar_t__) ;
 scalar_t__ TYPE_CONTEXT (scalar_t__) ;
 scalar_t__ TYPE_PTRMEMFUNC_FN_TYPE (scalar_t__) ;
 int TYPE_PTRMEMFUNC_P (scalar_t__) ;
 int TYPE_QUALS (scalar_t__) ;
 int TYPE_TEMPLATE_INFO (scalar_t__) ;
 int TYPE_TI_ARGS (scalar_t__) ;

 scalar_t__ cp_build_qualified_type_real (scalar_t__,int ,int ) ;
 scalar_t__ error_mark_node ;
 scalar_t__ lookup_template_class (scalar_t__,scalar_t__,scalar_t__,scalar_t__,int,int ) ;
 int skip_evaluation ;
 scalar_t__ tsubst (scalar_t__,scalar_t__,int ,scalar_t__) ;
 scalar_t__ tsubst_template_args (int ,scalar_t__,int ,scalar_t__) ;

__attribute__((used)) static tree
tsubst_aggr_type (tree t,
    tree args,
    tsubst_flags_t complain,
    tree in_decl,
    int entering_scope)
{
  if (t == NULL_TREE)
    return NULL_TREE;

  switch (TREE_CODE (t))
    {
    case 129:
      if (TYPE_PTRMEMFUNC_P (t))
 return tsubst (TYPE_PTRMEMFUNC_FN_TYPE (t), args, complain, in_decl);


    case 130:
    case 128:
      if (TYPE_TEMPLATE_INFO (t))
 {
   tree argvec;
   tree context;
   tree r;
   bool saved_skip_evaluation;


   saved_skip_evaluation = skip_evaluation;
   skip_evaluation = 0;



   context = TYPE_CONTEXT (t);
   if (context)
     context = tsubst_aggr_type (context, args, complain,
     in_decl, 1);
   argvec = tsubst_template_args (TYPE_TI_ARGS (t), args,
      complain, in_decl);
   if (argvec == error_mark_node)
     r = error_mark_node;
   else
     {
       r = lookup_template_class (t, argvec, in_decl, context,
      entering_scope, complain);
       r = cp_build_qualified_type_real (r, TYPE_QUALS (t), complain);
     }

   skip_evaluation = saved_skip_evaluation;

   return r;
 }
      else

 return t;

    default:
      return tsubst (t, args, complain, in_decl);
    }
}
