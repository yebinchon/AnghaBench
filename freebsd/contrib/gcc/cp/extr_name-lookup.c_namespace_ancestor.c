
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int CP_DECL_CONTEXT (int ) ;
 int POP_TIMEVAR_AND_RETURN (int ,int ) ;
 int TV_NAME_LOOKUP ;
 scalar_t__ is_ancestor (int ,int ) ;
 int timevar_push (int ) ;

__attribute__((used)) static tree
namespace_ancestor (tree ns1, tree ns2)
{
  timevar_push (TV_NAME_LOOKUP);
  if (is_ancestor (ns1, ns2))
    POP_TIMEVAR_AND_RETURN (TV_NAME_LOOKUP, ns1);
  POP_TIMEVAR_AND_RETURN (TV_NAME_LOOKUP,
     namespace_ancestor (CP_DECL_CONTEXT (ns1), ns2));
}
