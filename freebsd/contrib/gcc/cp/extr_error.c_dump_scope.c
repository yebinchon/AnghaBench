
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 scalar_t__ AGGREGATE_TYPE_P (scalar_t__) ;
 scalar_t__ FUNCTION_DECL ;
 scalar_t__ NAMESPACE_DECL ;
 scalar_t__ NULL_TREE ;
 int TFF_CHASE_TYPEDEF ;
 int TFF_RETURN_TYPE ;
 int TFF_SCOPE ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 int cxx_pp ;
 int dump_decl (scalar_t__,int) ;
 int dump_function_decl (scalar_t__,int) ;
 int dump_type (scalar_t__,int) ;
 scalar_t__ global_namespace ;
 int pp_cxx_colon_colon (int ) ;

__attribute__((used)) static void
dump_scope (tree scope, int flags)
{
  int f = ~TFF_RETURN_TYPE & (flags & (TFF_SCOPE | TFF_CHASE_TYPEDEF));

  if (scope == NULL_TREE)
    return;

  if (TREE_CODE (scope) == NAMESPACE_DECL)
    {
      if (scope != global_namespace)
 {
   dump_decl (scope, f);
   pp_cxx_colon_colon (cxx_pp);
 }
    }
  else if (AGGREGATE_TYPE_P (scope))
    {
      dump_type (scope, f);
      pp_cxx_colon_colon (cxx_pp);
    }
  else if ((flags & TFF_SCOPE) && TREE_CODE (scope) == FUNCTION_DECL)
    {
      dump_function_decl (scope, f);
      pp_cxx_colon_colon (cxx_pp);
    }
}
