
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef int cxx_pretty_printer ;


 scalar_t__ DECL_CONTEXT (int ) ;
 scalar_t__ DECL_P (int ) ;
 scalar_t__ OVERLOAD ;
 int OVL_CURRENT (int ) ;
 scalar_t__ TREE_CODE (int ) ;
 int pp_cxx_qualified_id (int *,int ) ;
 int pp_cxx_unqualified_id (int *,int ) ;

__attribute__((used)) static inline void
pp_cxx_id_expression (cxx_pretty_printer *pp, tree t)
{
  if (TREE_CODE (t) == OVERLOAD)
    t = OVL_CURRENT (t);
  if (DECL_P (t) && DECL_CONTEXT (t))
    pp_cxx_qualified_id (pp, t);
  else
    pp_cxx_unqualified_id (pp, t);
}
