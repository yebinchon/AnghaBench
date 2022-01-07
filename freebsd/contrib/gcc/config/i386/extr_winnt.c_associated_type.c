
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 scalar_t__ DECL_CONTEXT (scalar_t__) ;
 scalar_t__ NULL_TREE ;
 scalar_t__ TYPE_P (scalar_t__) ;

__attribute__((used)) static tree
associated_type (tree decl)
{
  return (DECL_CONTEXT (decl) && TYPE_P (DECL_CONTEXT (decl)))
            ? DECL_CONTEXT (decl) : NULL_TREE;
}
