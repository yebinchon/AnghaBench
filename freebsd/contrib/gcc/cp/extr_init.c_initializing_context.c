
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 scalar_t__ ANON_AGGR_TYPE_P (scalar_t__) ;
 scalar_t__ DECL_CONTEXT (scalar_t__) ;
 scalar_t__ TYPE_CONTEXT (scalar_t__) ;

__attribute__((used)) static tree
initializing_context (tree field)
{
  tree t = DECL_CONTEXT (field);



  while (t && ANON_AGGR_TYPE_P (t))
    t = TYPE_CONTEXT (t);
  return t;
}
