
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DECL_ARGUMENTS (int ) ;
 scalar_t__ DECL_ARTIFICIAL (int ) ;
 int DECL_SAVED_TREE (int ) ;
 int current_function_decl ;
 scalar_t__ mf_marked_p (int ) ;
 int mf_xform_decls (int ,int ) ;
 int pop_gimplify_context (int *) ;
 int push_gimplify_context () ;

__attribute__((used)) static unsigned int
execute_mudflap_function_decls (void)
{


  if (mf_marked_p (current_function_decl) ||
      DECL_ARTIFICIAL (current_function_decl))
    return 0;

  push_gimplify_context ();

  mf_xform_decls (DECL_SAVED_TREE (current_function_decl),
                  DECL_ARGUMENTS (current_function_decl));

  pop_gimplify_context (((void*)0));
  return 0;
}
