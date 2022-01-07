
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 scalar_t__ CP_DECL_CONTEXT (scalar_t__) ;
 int DECL_NAME (scalar_t__) ;
 scalar_t__ global_namespace ;
 int push_namespace (int ) ;
 int push_to_top_level () ;

void
push_nested_namespace (tree ns)
{
  if (ns == global_namespace)
    push_to_top_level ();
  else
    {
      push_nested_namespace (CP_DECL_CONTEXT (ns));
      push_namespace (DECL_NAME (ns));
    }
}
