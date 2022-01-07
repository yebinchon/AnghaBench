
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * tree ;


 int * CP_DECL_CONTEXT (int * const) ;
 scalar_t__ DECL_NAMESPACE_STD_P (int *) ;
 scalar_t__ FUNCTION_DECL ;
 int MANGLE_TRACE_TREE (char*,int * const) ;
 scalar_t__ TREE_CODE (int *) ;
 int gcc_assert (int) ;
 int * global_namespace ;
 int write_string (char*) ;
 int write_unqualified_name (int * const) ;

__attribute__((used)) static void
write_unscoped_name (const tree decl)
{
  tree context = CP_DECL_CONTEXT (decl);

  MANGLE_TRACE_TREE ("unscoped-name", decl);


  if (DECL_NAMESPACE_STD_P (context))
    {
      write_string ("St");
      write_unqualified_name (decl);
    }
  else
    {


      gcc_assert (context == global_namespace
    || context == ((void*)0)
    || TREE_CODE (context) == FUNCTION_DECL);

      write_unqualified_name (decl);
    }
}
