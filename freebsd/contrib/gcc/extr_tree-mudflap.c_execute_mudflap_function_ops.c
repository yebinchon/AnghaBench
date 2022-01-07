
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ DECL_ARTIFICIAL (int ) ;
 int current_function_decl ;
 int flag_mudflap_threads ;
 int mf_decl_cache_locals () ;
 int mf_decl_clear_locals () ;
 scalar_t__ mf_marked_p (int ) ;
 int mf_xform_derefs () ;
 int pop_gimplify_context (int *) ;
 int push_gimplify_context () ;

__attribute__((used)) static unsigned int
execute_mudflap_function_ops (void)
{


  if (mf_marked_p (current_function_decl) ||
      DECL_ARTIFICIAL (current_function_decl))
    return 0;

  push_gimplify_context ();


  if (! flag_mudflap_threads)
    mf_decl_cache_locals ();

  mf_xform_derefs ();

  if (! flag_mudflap_threads)
    mf_decl_clear_locals ();

  pop_gimplify_context (((void*)0));
  return 0;
}
