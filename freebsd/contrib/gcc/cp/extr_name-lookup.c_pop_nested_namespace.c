
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 scalar_t__ CP_DECL_CONTEXT (scalar_t__) ;
 int TV_NAME_LOOKUP ;
 scalar_t__ global_namespace ;
 int pop_from_top_level () ;
 int pop_namespace () ;
 int timevar_pop (int ) ;
 int timevar_push (int ) ;

void
pop_nested_namespace (tree ns)
{
  timevar_push (TV_NAME_LOOKUP);
  while (ns != global_namespace)
    {
      pop_namespace ();
      ns = CP_DECL_CONTEXT (ns);
    }

  pop_from_top_level ();
  timevar_pop (TV_NAME_LOOKUP);
}
