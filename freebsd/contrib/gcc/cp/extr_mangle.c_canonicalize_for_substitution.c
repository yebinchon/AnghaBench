
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 scalar_t__ TREE_CODE (int ) ;
 int TREE_TYPE (int ) ;
 scalar_t__ TYPE_DECL ;
 scalar_t__ TYPE_P (int ) ;
 int canonical_type_variant (int ) ;

__attribute__((used)) static inline tree
canonicalize_for_substitution (tree node)
{

  if (TREE_CODE (node) == TYPE_DECL)
    node = TREE_TYPE (node);
  if (TYPE_P (node))
    node = canonical_type_variant (node);

  return node;
}
