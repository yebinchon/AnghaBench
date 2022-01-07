
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ CP_DECL_CONTEXT (scalar_t__) ;
 scalar_t__ current_namespace ;
 int gcc_assert (int) ;
 scalar_t__ global_namespace ;
 int leave_scope () ;

void
pop_namespace (void)
{
  gcc_assert (current_namespace != global_namespace);
  current_namespace = CP_DECL_CONTEXT (current_namespace);

  leave_scope ();
}
