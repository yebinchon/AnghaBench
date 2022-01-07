
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * tree ;


 int * CP_DECL_CONTEXT (int *) ;
 int * DECL_CONTEXT (int *) ;
 scalar_t__ DECL_NAMESPACE_STD_P (int *) ;
 scalar_t__ FUNCTION_DECL ;
 int MANGLE_TRACE_TREE (char*,int *) ;
 int TI_ARGS (int *) ;
 int TI_TEMPLATE (int *) ;
 scalar_t__ TREE_CODE (int *) ;
 int TREE_TYPE (int *) ;
 int * TYPE_CONTEXT (int *) ;
 scalar_t__ TYPE_DECL ;
 int * TYPE_MAIN_VARIANT (int ) ;
 int * TYPE_NAME (int *) ;
 scalar_t__ TYPE_P (int *) ;
 scalar_t__ decl_is_template_id (int *,int **) ;
 int * global_namespace ;
 int write_local_name (int *,int *,int *) ;
 int write_nested_name (int *) ;
 int write_template_args (int ) ;
 int write_unscoped_name (int *) ;
 int write_unscoped_template_name (int ) ;

__attribute__((used)) static void
write_name (tree decl, const int ignore_local_scope)
{
  tree context;

  MANGLE_TRACE_TREE ("name", decl);

  if (TREE_CODE (decl) == TYPE_DECL)
    {


      decl = TYPE_NAME (TYPE_MAIN_VARIANT (TREE_TYPE (decl)));
      context = TYPE_CONTEXT (TYPE_MAIN_VARIANT (TREE_TYPE (decl)));
    }
  else
    context = (DECL_CONTEXT (decl) == ((void*)0)) ? ((void*)0) : CP_DECL_CONTEXT (decl);






  if (context == ((void*)0)
      || context == global_namespace
      || DECL_NAMESPACE_STD_P (context)
      || (ignore_local_scope && TREE_CODE (context) == FUNCTION_DECL))
    {
      tree template_info;

      if (decl_is_template_id (decl, &template_info))
 {

   write_unscoped_template_name (TI_TEMPLATE (template_info));
   write_template_args (TI_ARGS (template_info));
 }
      else

 write_unscoped_name (decl);
    }
  else
    {



      if (!ignore_local_scope)
 {






   tree local_entity = decl;
   while (context != ((void*)0) && context != global_namespace)
     {

       if (context != ((void*)0) && TYPE_P (context))
  context = TYPE_NAME (context);

       if (TREE_CODE (context) == FUNCTION_DECL)
  {


    write_local_name (context, local_entity, decl);
    return;
  }

       local_entity = context;
       context = CP_DECL_CONTEXT (context);
     }


 }


      write_nested_name (decl);
    }
}
