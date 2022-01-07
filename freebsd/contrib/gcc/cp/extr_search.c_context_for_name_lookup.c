
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 scalar_t__ ANON_AGGR_TYPE_P (scalar_t__) ;
 scalar_t__ DECL_CONTEXT (scalar_t__) ;
 scalar_t__ TYPE_CONTEXT (scalar_t__) ;
 scalar_t__ TYPE_P (scalar_t__) ;
 scalar_t__ global_namespace ;

tree
context_for_name_lookup (tree decl)
{






  tree context = DECL_CONTEXT (decl);

  while (context && TYPE_P (context) && ANON_AGGR_TYPE_P (context))
    context = TYPE_CONTEXT (context);
  if (!context)
    context = global_namespace;

  return context;
}
